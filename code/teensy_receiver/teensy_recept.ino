#include <math.h>
#include "SerialMessage.h"
#include "Message.h"

// set this to the hardware serial port you wish to use
#define RF_SERIAL Serial1

#define DEBUG 0

class Point {
  public:
    double x;
    double y;

    Point() : x(0), y(0) {}
    Point(double px, double py) : x(px), y(py) {}
    Point(const Point& p) : x(p.x), y(p.y) {}

    String toString() {
      return "(" + String(x) + ", " + String(y) + ")";
    }

    double distance2(const Point* p) {
      return (x - p->x) * (x - p->x) + (y - p->y) * (y - p->y);
    }

    double distance(const Point* p) {
      return sqrt(distance2(p));
    }
};

class BaseChanger {
  private:
    double _dx;
    double _dy;
    double _theta;

  public:
    BaseChanger(double dx, double dy, double theta) : _dx(dx), _dy(dy), _theta(theta) {}

    Point* change(double x, double y) {
      double nx = cos(_theta) * (x + _dx) - sin(_theta) * (y + _dy);
      double ny = sin(_theta) * (x + _dx) + cos(_theta) * (y + _dy);

      return new Point(nx, ny);
    }

    Point* change(const Point* p) {
      return change(p->x, p->y);
    }

    Point* restore(double x, double y) {
      double nx = - _dx + cos(- _theta) * x - sin(- _theta) * y;
      double ny = - _dy + sin(- _theta) * x + cos(- _theta) * y;

      return new Point(nx, ny);
    }

    Point* restore(const Point* p) {
      return restore(p->x, p->y);
    }
};

Point* BAD_POINT = new Point(-1, -1);

class FangThreePointsLateration {
  private:
    Point _b1;
    Point _b2;
    Point _b3;

    Point* _foundP1;
    Point* _foundP2;

    BaseChanger* turnBase(Point* p1, Point* p2) {
      double dx = p2->x - p1->x;
      double dy = p2->y - p1->y;
      double theta;

      if (dx != 0) {
        double alpha = atan(dy / dx);
        theta = PI - alpha;
      } else {
        theta = PI / 2;
      }

      return new BaseChanger(- p1->x, - p1->y, theta);
    }

    Point* keepGoodPoint(Point* p1, Point* p2, double a, double b, double c) {
      if (a == 0) {
        double p1b = _b2.distance2(p1) - _b1.distance2(p1);
        double p2b = _b2.distance2(p2) - _b1.distance2(p2);
        if (p1b < 0)
          return p2;
        else if (p2b < 0)
          return p1;
        else {
          double bc = b * b;
          if (abs(bc - p1b) < abs(bc - p2b))
            return p1;
          else
            return p2;
        }
      } else if (b == 0) {
        double p1a = _b1.distance2(p1) - _b2.distance2(p1);
        double p2a = _b1.distance2(p2) - _b2.distance2(p2);
        if (p1a < 0)
          return p2;
        else if (p2a < 0)
          return p1;
        else {
          double ac = a * a;
          if (abs(ac - p1a) < abs(ac - p2a))
            return p1;
          else
            return p2;
        }
      } else if (c == 0) {
        double p1c = _b1.distance2(p1) - _b3.distance2(p1);
        double p2c = _b1.distance2(p2) - _b3.distance2(p2);
        if (p1c < 0)
          return p2;
        else if (p2c < 0)
          return p1;
        else {
          double cc = c * c;
          if (abs(cc - p1c) < abs(cc - p2c))
            return p1;
          else
            return p2;
        }
      }

      RF_SERIAL.print("No good point ");
      RF_SERIAL.print(a);
      RF_SERIAL.print(", ");
      RF_SERIAL.print(b);
      RF_SERIAL.print(", ");
      RF_SERIAL.println(c);
      return BAD_POINT;
    }

    double fixDiff(double dr, double baseDistance) {
      // divide by 0 is bad ;) and I don't want to manage cases :P
      // Faking it will cause an error of 0.005 mm, thats OK
      if (dr >= 0 && dr <= 0.005)
        return 0.005;

      // due to error measure, dr can be larger than distance between to bases
      // this is not possible ...
      if (dr > baseDistance)
        return baseDistance;
      return dr;
    }

  public:
    FangThreePointsLateration() : _foundP1(new Point(0, 0)), _foundP2(new Point(0, 0)) {}

    Point* findPoint(Point& b1, Point &b2, Point &b3, double a, double b, double c) {
      _b1 = b1;
      _b2 = b2;
      _b3 = b3;
      
      delete _foundP1;
      delete _foundP2;

      // change base in order to get tb1(0, 0), tb2(x2, 0), tb3(x3, y3)
      Point *tb1, *tb2, *tb3;
      BaseChanger *bc;
      double r21, r31;

      if (a == 0) {
        bc = turnBase(&_b1, &_b2);
        tb1 = bc->change(&_b1);
        tb2 = bc->change(&_b2);
        tb3 = bc->change(&_b3);
        r21 = fixDiff(b, tb1->distance(tb2));
        r31 = fixDiff(c, tb1->distance(tb3));
      } else if (b == 0) {
        bc = turnBase(&_b2, &_b1);
        tb1 = bc->change(&_b2);
        tb2 = bc->change(&_b1);
        tb3 = bc->change(&_b3);
        r21 = fixDiff(a, tb1->distance(tb2));
        r31 = fixDiff(c, tb1->distance(tb3));
      } else {
        bc = turnBase(&_b3, &_b1);
        tb1 = bc->change(&_b3);
        tb2 = bc->change(&_b1);
        tb3 = bc->change(&_b2);
        r21 = fixDiff(a, tb1->distance(tb2));
        r31 = fixDiff(b, tb1->distance(tb3));
      }

      // search 2 points
      double g = (r31 * (tb2->x / r21) - tb3->x) / tb3->y;
      double i = 1 - (tb2->x / r21) * (tb2->x / r21);
      double h = (tb3->x * tb3->x + tb3->y * tb3->y - r31 * r31 + r31 * r21 * i) / (2 * tb3->y);

      double d = - (i + g * g);
      double e = tb2->x * i - 2 * g * h;
      double f = (r21 * r21 / 4) * i * i - h * h;

      double delta = e * e - 4 * d * f;
      // In case of double precision issue
      if (delta > -0.00001 && delta <= 0)
        delta = 0;
      if (delta < 0) {
        RF_SERIAL.println("Delta negativ : " + String(delta));
      }
      double sqrtDelta = sqrt(delta);
      double tx1 = (- e + sqrtDelta) / (2 * d);
      double tx2 = (- e - sqrtDelta) / (2 * d);

      double ty1 = g * tx1 + h;
      double ty2 = g * tx2 + h;

      // restore in orig base
      _foundP1 = bc->restore(tx1, ty1);
      _foundP2 = bc->restore(tx2, ty2);

      delete bc;
      delete tb1;
      delete tb2;
      delete tb3;

      Point* goodPoint = keepGoodPoint(_foundP1, _foundP2, a, b, c);
      Point* finalPoint = new Point(goodPoint->x, goodPoint->y);

      return finalPoint;
    }

    Point* getFoundP1() {
      return _foundP1;
    }

    Point* getFoundP2() {
      return _foundP2;
    }
};

// from : https://forum.pjrc.com/archive/index.php/t-7531.html
#define INPUT_PULLDOWN 3
#define OUTPUT_OPENDRAIN 4
void myPinMode(uint8_t pin, uint8_t mode) {
  volatile uint32_t *config;

  if (pin >= CORE_NUM_DIGITAL) return;
  config = portConfigRegister(pin);

  if (mode == OUTPUT || mode == OUTPUT_OPENDRAIN) {
    *portModeRegister(pin) = 1;
    __disable_irq();
    *config &= ~PORT_PCR_MUX_MASK;
    *config |= (PORT_PCR_SRE | PORT_PCR_DSE | PORT_PCR_MUX(1));
    if (mode == OUTPUT_OPENDRAIN) {
      *config |= PORT_PCR_ODE;
    } else {
      *config &= ~PORT_PCR_ODE;
    }
    __enable_irq();
  } else if (mode == INPUT || mode == INPUT_PULLUP || mode == INPUT_PULLDOWN) {
    *portModeRegister(pin) = 0;
    __disable_irq();
    *config &= ~PORT_PCR_MUX_MASK;
    *config |= PORT_PCR_MUX(1);
    if (mode == INPUT_PULLUP) {
      *config |= (PORT_PCR_PE | PORT_PCR_PS); // pullup
    } else if (mode == INPUT_PULLDOWN) {
      *config |= (PORT_PCR_PE); // pulldown
      *config &= ~(PORT_PCR_PS);
    }
    __enable_irq()
  }
}

#include <avr/io.h>
#include <avr/interrupt.h>

#define PIN_25_1_1 0
#define PIN_25_1_2 1
#define PIN_25_2_1 2
#define PIN_25_2_2 3
#define PIN_25_3_1 4
#define PIN_25_3_2 5
#define PIN_25_3_3 6

#define PIN_32_1_1 0
#define PIN_32_1_2 1
#define PIN_32_2_1 2
#define PIN_32_2_2 3
#define PIN_32_3_1 4
#define PIN_32_3_2 5
#define PIN_32_3_3 6

#define FREQ_25 0
#define FREQ_32 1

// 11800 µs -> 4m at sound speed
#define TIME_WINDOW 11800

short pins25[] = {2, 3, 4, 5, 6, 7, 8};
short pins32[] = {14, 15, 16, 17, 18, 19, 20};

//Point b1 = Point(0, 0);
//Point b2 = Point(0, 2000);
//Point b3 = Point(3000, 1000);

Point bases[] = {
  // 25
  Point(-10, -60),
  Point(-37, -10),
  Point(-37, 2010),
  Point(-10, 2060),
  Point(3015, 1030),
  Point(3003, 1000),
  Point(2985, 970),
  
  // 32.8
  Point(-10, -60),
  Point(-37, -10),
  Point(-37, 2010),
  Point(-10, 2060),
  Point(3015, 1030),
  Point(3003, 1000),
  Point(2985, 970)
};

FangThreePointsLateration tpl = FangThreePointsLateration();

volatile unsigned long started[] = {0, 0};
volatile int times[] = {-1, -1, -1, -1, -1, -1, -1, // 25kHz
                        -1, -1, -1, -1, -1, -1, -1}; // 32.8kHz

/*
void runTestTable() {
  Serial.println("Run test");
  for (int x = 0; x < 3000; x += 100) {
    for (int y = 0; y < 2000; y += 100) {
      Point realPos = Point(x, y);

      double r1 = b1.distance(&realPos);
      double r2 = b2.distance(&realPos);
      double r3 = b3.distance(&realPos);

      //      r1 += Math.random() * ERROR;
      //      r2 += Math.random() * ERROR;
      //      r3 += Math.random() * ERROR;

      Point* foundP;

      if (r1 <= r2 && r1 <= r3) {
        foundP = tpl.findPoint(0, r2 - r1, r3 - r1);
      } else if (r2 <= r1 && r2 <= r3) {
        foundP = tpl.findPoint(r1 - r2, 0, r3 - r2);
      } else if (r3 <= r1 && r3 <= r2) {
        foundP = tpl.findPoint(r1 - r3, r2 - r3, 0);
      } else {
        foundP = new Point(-1, -1);
      }

      double error = realPos.distance(foundP);
      Serial.print(String(x));
      Serial.print(", ");
      Serial.print(y);
      Serial.print(" found : ");
      Serial.print(foundP->x);
      Serial.print(", ");
      Serial.print(foundP->y);
      Serial.print(" with error : ");
      Serial.println(error);

      delete foundP;
    }
  }
}*/

void updatePin25(int pin) {
  //Serial.println("Pin up : " + String(pin));
  if (started[FREQ_25] == 0) {
    started[FREQ_25] = micros();
    times[pin] = 0;
  } else {
    int time = micros() - started[FREQ_25];
    if (time < TIME_WINDOW && times[pin] == -1)
      times[pin] = time;
  }
}

void pin25_1_1_Interrupt() {
  cli();
  updatePin25(PIN_25_1_1);
  sei();
}

void pin25_1_2_Interrupt() {
  cli();
  updatePin25(PIN_25_1_2);
  sei();
}

void pin25_2_1_Interrupt() {
  cli();
  updatePin25(PIN_25_2_1);
  sei();
}

void pin25_2_2_Interrupt() {
  cli();
  updatePin25(PIN_25_2_2);
  sei();
}

void pin25_3_1_Interrupt() {
  cli();
  updatePin25(PIN_25_3_1);
  sei();
}

void pin25_3_2_Interrupt() {
  cli();
  updatePin25(PIN_25_3_2);
  sei();
}

void pin25_3_3_Interrupt() {
  cli();
  updatePin25(PIN_25_3_3);
  sei();
}

void updatePin32(int pin) {
  //Serial.println("Pin up : " + String(pin));
  if (started[FREQ_32] == 0) {
    started[FREQ_32] = micros();
    times[pin] = 0;
  } else {
    int time = micros() - started[FREQ_32];
    if (time < TIME_WINDOW && times[pin] == -1)
      times[pin] = time;
  }
}

void pin32_1_1_Interrupt() {
  cli();
  updatePin32(PIN_32_1_1);
  sei();
}

void pin32_1_2_Interrupt() {
  cli();
  updatePin32(PIN_32_1_2);
  sei();
}

void pin32_2_1_Interrupt() {
  cli();
  updatePin32(PIN_32_2_1);
  sei();
}

void pin32_2_2_Interrupt() {
  cli();
  updatePin32(PIN_32_2_2);
  sei();
}

void pin32_3_1_Interrupt() {
  cli();
  updatePin32(PIN_32_3_1);
  sei();
}

void pin32_3_2_Interrupt() {
  cli();
  updatePin32(PIN_32_3_2);
  sei();
}

void pin32_3_3_Interrupt() {
  cli();
  updatePin32(PIN_32_3_3);
  sei();
}

double soundSpeed() {
  return 344.854;
}

/**
 * Concert micro seconds to millimeters at sound speed
 */
double timeToDistance(int us) {
  return us / 1000.0 * soundSpeed();
}

//void debugPoint(Point *po) {
//  Serial.print(po->x);
//  Serial.print(", ");
//  Serial.print(po->y);
//  Serial.println("");
//}

void filterClosedReceivers(int distances[], int from, int to) {
  int first = 999999;
  for (int i = from; i <= to; i++)  {
    if (distances[i] != -1 && distances[i] < first)
      first = distances[i];
  }
  
  for (int i = from; i <= to; i++) {
    if (distances[i] != -1 && distances[i] > first + 200) {
      distances[i] = -1;
      if (DEBUG > 2) {
        RF_SERIAL.print("Removed : ");
        RF_SERIAL.print(distances[i]);
        RF_SERIAL.print(" : ");
        RF_SERIAL.println(i);
      }
    }
  }
}

SerialMessage sm = SerialMessage(&RF_SERIAL);
int ledState = 0;

void setup() {
  Serial.begin(9600);
  RF_SERIAL.begin(115200);

  for (int i = PIN_25_1_1; i <= PIN_25_3_3; i++) {
    myPinMode(pins25[i], INPUT_PULLDOWN);
  }

  attachInterrupt(pins25[PIN_25_1_1], pin25_1_1_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_1_2], pin25_1_2_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_2_1], pin25_2_1_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_2_2], pin25_2_2_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_3_1], pin25_3_1_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_3_2], pin25_3_2_Interrupt, RISING);
  attachInterrupt(pins25[PIN_25_3_3], pin25_3_3_Interrupt, RISING);

  for (int i = PIN_32_1_1; i <= PIN_32_3_3; i++) {
    myPinMode(pins32[i], INPUT_PULLDOWN);
  }

  attachInterrupt(pins32[PIN_32_1_1], pin32_1_1_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_1_2], pin32_1_2_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_2_1], pin32_2_1_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_2_2], pin32_2_2_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_3_1], pin32_3_1_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_3_2], pin32_3_2_Interrupt, RISING);
  attachInterrupt(pins32[PIN_32_3_3], pin32_3_3_Interrupt, RISING);
  
  pinMode(13, OUTPUT);
}

void computePos(short freq, short startPin, short endPin, short firstB1, short lastB1, short firstB2, short lastB2, short firstB3, short lastB3) {
  if (started[freq] != 0) {
    cli();
    if (micros() - started[freq] > TIME_WINDOW) { // time for sound to run 4 meters
      int _times[14];
      for (int i = startPin; i <= endPin; i++) {
        _times[i] = times[i];
        
        // reset
        times[i] = -1;
      }
      
      started[freq] = 0;
      sei();
      
      // process compute
      int _distances[14];
      for (int i = startPin; i <= endPin; i++) {
        if (_times[i] != -1)
          _distances[i] = timeToDistance(_times[i]);
        else
          _distances[i] = -1;
      }
      
      if (DEBUG > 1) {
        RF_SERIAL.print("Recept times : ");
        for (int i = startPin; i <= endPin; i++) {
          RF_SERIAL.print(_times[i]);
          RF_SERIAL.print(", ");
        }
        RF_SERIAL.println("");
      }
      
      Point foundSum = Point(0, 0);
      int numSum = 0;
      
      // filter closed receivers
      filterClosedReceivers(_distances, firstB1, lastB1);
      filterClosedReceivers(_distances, firstB2, lastB2);
      filterClosedReceivers(_distances, firstB3, lastB3);
      
      for (int i = firstB1; i <= lastB1; i++) {
        if (_distances[i] != -1) {
          for (int j = firstB2; j <= lastB2; j++) {
            if (_distances[j] != -1) {
              for (int k = firstB3; k <= lastB3; k++) {
                if (_distances[k] != -1) {
                  int a = -1, b = -1, c = -1;
                  if (_distances[i] <= _distances[j] && _distances[i] <= _distances[k]) {
                    a = 0;
                    b = _distances[j] - _distances[i];
                    c = _distances[k] - _distances[i];
                  } else if (_distances[j] <= _distances[i] && _distances[j] <= _distances[k]) {
                    a = _distances[i] - _distances[j];
                    b = 0;
                    c = _distances[k] - _distances[j];
                  } else if (_distances[k] <= _distances[i] && _distances[k] <= _distances[j]) {
                    a = _distances[i] - _distances[k];
                    b = _distances[j] - _distances[k];
                    c = 0;
                  }
                  
                  Point* foundP = tpl.findPoint(bases[i], bases[j], bases[k], a, b, c);
                  foundSum.x += foundP->x;
                  foundSum.y += foundP->y;
                  numSum++;
                  
                  if (DEBUG > 1) {
                    RF_SERIAL.print("Non filtered : ");
                    RF_SERIAL.print(foundP->x);
                    RF_SERIAL.print(", ");
                    RF_SERIAL.print(foundP->y);
                    RF_SERIAL.println(";");
                  }
                  
                  delete foundP;
                }
              }
            }
          }
        }
      }
      //Point* foundP = tpl.findPoint(b1, b2, b3, timeToDistance(_times[firstB1]), timeToDistance(_times[firstB2]), timeToDistance(_times[firstB3]));
      
      //debugPoint(foundP);
      Point filteredPoint = Point(foundSum.x / numSum, foundSum.y / numSum);
      if (filteredPoint.x > 0 && filteredPoint.x < 3000 && filteredPoint.y > 0 && filteredPoint.y < 2000) {
        if (DEBUG >= 1) {
          if (freq == FREQ_25)
            RF_SERIAL.print("25kHz : ");
          else
            RF_SERIAL.print("32.8kHz : ");
            
          RF_SERIAL.print(filteredPoint.x);
          RF_SERIAL.print(", ");
          RF_SERIAL.print(filteredPoint.y);
          RF_SERIAL.println("");
          /*
          RF_SERIAL.print("[");
          RF_SERIAL.print(filteredPoint.x);
          RF_SERIAL.print(", ");
          RF_SERIAL.print(filteredPoint.y);
          RF_SERIAL.println("],");
          */
        }
        
        char id = 0x00;
        if (freq == FREQ_25)
          id = 0x10;
        else
          id = 0x11;
        Message msg = Message(id);
        msg.packFloat(filteredPoint.x);
        msg.packFloat(filteredPoint.y);
        sm.sendMessage(&msg);
        
        if (ledState == 0) {
          digitalWrite(13, 0);
          ledState = 1;
        } else {
          digitalWrite(13, 1);
          ledState = 0;
        }
      }
    } else {
      sei();
    }
  }
}

unsigned long delayPing = 0;
void loop() {
  computePos(FREQ_25, PIN_25_1_1, PIN_25_3_3, PIN_25_1_1, PIN_25_1_2, PIN_25_2_1, PIN_25_2_2, PIN_25_3_1, PIN_25_3_3);
  computePos(FREQ_32, PIN_25_1_1, PIN_25_3_3, PIN_25_1_1, PIN_25_1_2, PIN_25_2_1, PIN_25_2_2, PIN_25_3_1, PIN_25_3_3);
  if (millis() - delayPing > 1000) {
    delayPing = millis();
    Message msg = Message(0x00);
    sm.sendMessage(&msg);
  }
}
