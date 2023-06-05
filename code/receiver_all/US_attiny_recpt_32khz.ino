/*
 * US_reader.c
 *
 * Created: 10/01/2015 17:43:44
 */

#define FREQ25 true
#define FREQ32 false

#define DEMODULATION_DIFF 0
#define UP 1
#define DOWN 0

int outputPin = 0;
int ledPin = 1;

int evenOdd = 0;

void debug(int nb) {
  for (int j = 0; j < nb; j++) {
    digitalWrite(outputPin, 1);
    for (int i = 0; i < 1000; i++) {}
    digitalWrite(outputPin, 0);
    for (int i = 0; i < 1000; i++) {}
  }
  
  for (int i = 0; i < 10000; i++) {}
}
 
void startAdc() {
  ADCSRA |= 0b01000000;
}

void waitAdc() {
  while (ADCSRA & (1 << ADSC)) {}
}

int readAdc() {
  startAdc();
  waitAdc();

  return ADCH << 2;
}

void configAdcPB4() {
  // ADC voltage ref 5V, PB4, 8 high part in ADCH
  ADMUX = 0b00100010; // 5V ref, gain 1
}

void configAdcPB3() {
  // ADC voltage ref 5V, PB3, 8 high part in ADCH
  ADMUX = 0b00100011; // 5V ref, gain 1
}

void received() {
  digitalWrite(outputPin, 1);
  delay(2);
  digitalWrite(outputPin, 0);
  
  if (evenOdd == 0) {
    digitalWrite(ledPin, 1);
    evenOdd = 1;
  } else {
    digitalWrite(ledPin, 0);
    evenOdd = 0;
  }
}

unsigned char TCCR1Conf() {
  if (FREQ25)
    return 1 << CTC1 | 1 << CS13; // will need 188 tick for 3ms
  else if (FREQ32)
    //return 1 << CTC1 | 1 << CS13; // will need 150 tick for 2.4ms
    return 1 << CTC1 | 1 << CS13; // will need 110 tick for 1.75ms
}

int TCNT1Limit(bool towFird) {
  if (FREQ25) {
    if (!towFird)
      return 188;
    else
      return 125;
  } else if (FREQ32) {
    if (!towFird)
      return 110;
    else
      return 73;
  }
}

void sampleWait() {
  if (FREQ25)
    while (TCNT1 % 5 != 0) {}
  else if (FREQ32)
    while (TCNT1 % 2 != 0) {}
}

void setup() {
  pinMode(outputPin, OUTPUT);
  pinMode(ledPin, OUTPUT);

  // enable ADC, without interrupts, at 1MHz (div by 8)
  ADCSRA = 0b10000011;

  // Timer 1
  TCCR1 = 0;                  //stop the timer
  TCNT1 = 0;                  //zero the timer
  GTCCR = 1 << PSR1;          //reset the prescaler
  //start timer, ctc mode, ck/64
  //TCCR1 = 1 << CTC1 | 1 << CS12 | 1 << CS11 | 1 << CS10; // will need 225 tick for 1800µs
  //start timer, ctc mode, ck/128
  TCCR1 = TCCR1Conf();
}

void loop() {
  configAdcPB3();
  while (1) {
    int trigger = readAdc();

    if (trigger > 61) { // 0.3V * 1024 / 5 = 61
      configAdcPB4();
      int triggerL = readAdc();

      // reset timer
      TCNT1 = 0;
      GTCCR = 1 << PSR1;

      char upH = 1;
      char downH = 0;
      int prevValH = trigger;
      int prevValH2 = 0;
      char stateH = UP;

      char upL = 1;
      char downL = 0;
      int prevValL = triggerL;
      int prevValL2 = 0;
      char stateL = UP;

      // wait for timer
      while (TCNT1 < TCNT1Limit(false)) {
        // wait for reasonable sampling frequency
        sampleWait();
        configAdcPB3();
        int adcH = readAdc();
        configAdcPB4();
        int adcL = readAdc();

        // algo for h
        if (stateH == UP) {
          if (adcH < prevValH && prevValH < prevValH2) {
            stateH = DOWN;
            downH++;
          }
        } else {
          if (adcH > prevValH && prevValH > prevValH2) {
            upH++;
            stateH = UP;
          }
        }

        prevValH2 = prevValH;
        prevValH = adcH;

        // algo for l
        if (stateL == UP) {
          if (adcL < prevValL && prevValL < prevValL2) {
            stateL = DOWN;
            downL++;
          }
        } else {
          if (adcL > prevValL && prevValL > prevValL2) {
            upL++;
            stateL = UP;
          }
        }

        prevValL2 = prevValL;
        prevValL = adcL;
        
        if (TCNT1 < TCNT1Limit(true) && upH == 3 && downH == 3 || upL == 3 && downL == 3)
          // exclude measure
          upH = 100;
      }

      configAdcPB3();
//      if (upH >= 3 && downH >= 3 && upH <= 4 && downH <= 4
//          || upL >= 3 && downL >= 3 && upL <= 4 && downL <= 4)
  
//      debug(upL);
//      debug(downL);
      
//      if (upH >= 3 && downH >= 3 && upH <= 4 && downH <= 4) {
//        received();
//      }

      if (upH == 3 && downH == 3 || upL == 3 && downL == 3) {
        received();
      }
    }
  }
}

