/*
 * Expect 8MHz clock.
 * Will generate a loop at 25/32.8 kHz modulation of (8 square, 16 periods low) 3 times, and wait 50ms low
 */

#define FREQ25 false
#define FREQ32 true

int longWait = 0;
int pulsePart = 0;
int ledState = 0;

unsigned char trainTCCR1() {
  if (FREQ25)
    return _BV(CTC1) | _BV(CS12) | _BV(CS11); // clk / 32
  else if (FREQ32)
    return _BV(CTC1) | _BV(CS12) | _BV(CS10); // clk / 16
}

int trainTCNT1HalfTime(boolean half, int pulsePart) {
  if (FREQ25) {
    if (half)
      return 80; // 320µs
    else
      return 160; // 640µs
  } else if (FREQ32) {
    if (half) {
      if (pulsePart == 0)
        return 137; // 274.4µs 9 pulses
      else
        return 107; // 213.4µs 7 pulses
    } else
      return 183; // 365.9µs 12 pulses
  }
}

unsigned char pwmTCCR0BPrescaler() {
  if (FREQ25)
    return 0b010; // clk / 8
  else if (FREQ32)
    return 0b001; // clk
}

unsigned char pwmOCR0(boolean a) {
  if (FREQ25) {
    if (a)
      return 40;
    else
      return 20;
  } else if (FREQ32) {
    if (a)
      return 250;
    else
      return 125;
  }
}

void setup() {
  pinMode(0, OUTPUT);
  pinMode(1, OUTPUT);
  
  /*
    Control Register A for Timer/Counter-0 (Timer/Counter-0 is configured using two registers: A and B)
    TCCR0A is 8 bits: [COM0A1:COM0A0:COM0B1:COM0B0:unused:unused:WGM01:WGM00]
    2<<COM0A0: sets bits COM0A0 and COM0A1, which (in Fast PWM mode) clears OC0A on compare-match, and sets OC0A at BOTTOM
    2<<COM0B0: sets bits COM0B0 and COM0B1, which (in Fast PWM mode) clears OC0B on compare-match, and sets OC0B at BOTTOM
    3<<WGM00: sets bits WGM00 and WGM01, which (when combined with WGM02 from TCCR0B below) enables Fast PWM mode
  */
  TCCR0A = 0b01100011;
  
  /*
    Control Register B for Timer/Counter-0 (Timer/Counter-0 is configured using two registers: A and B)
    TCCR0B is 8 bits: [FOC0A:FOC0B:unused:unused:WGM02:CS02:CS01:CS00]
    0<<WGM02: bit WGM02 remains clear, which (when combined with WGM00 and WGM01 from TCCR0A above) enables Fast PWM mode
    1<<CS00: sets bits CS01 (leaving CS01 and CS02 clear), which tells Timer/Counter-0 to not use a prescalar
  */
  //TCCR0B = 0b00001001;
  TCCR0B = TCCR0B & 0b11110000 | 0b1010;
  OCR0A = pwmOCR0(true);
  OCR0B = pwmOCR0(false);
  
  // Timer 1
  TCCR1 = 0;                  //stop the timer
  TCNT1 = 0;                  //zero the timer
  GTCCR = _BV(PSR1);          //reset the prescaler
  //start timer, ctc mode    
  TCCR1 = trainTCCR1();
}

void loop() {
  if (longWait == 1) {
    if (TCNT1 >= 73) { // 75ms
      TCCR1 = 0;                  //stop the timer
      GTCCR = _BV(PSR1);          //reset the prescaler
      // start timer, ctc mode    
      TCCR1 = trainTCCR1();
      // reset timer
      TCNT1 = 0;
      
      // start pwm
      TCCR0B = TCCR0B & 0b11111000 | pwmTCCR0BPrescaler();
      // Goto short wait
      longWait = 0;
    }
  } else {
    int timeout = 0;
    if (pulsePart %2 == 0) {
      if (TCNT1 >= trainTCNT1HalfTime(true, pulsePart)) {
        // stop pwm
        TCCR0B = TCCR0B & 0b11111000;
        timeout = 1;
      }
    } else {
      if (TCNT1 >= trainTCNT1HalfTime(false, pulsePart)) {
        // start pwm
        TCCR0B = TCCR0B & 0b11111000 | pwmTCCR0BPrescaler();
        timeout = 1;
      }
    }
    
    if (timeout == 1) {
      pulsePart++;
      if (pulsePart > 4) {
        // init timer for long wait
        TCCR1 = 0;                  //stop the timer
        GTCCR = _BV(PSR1);          //reset the prescaler
        //start timer, ctc mode    
        TCCR1 = _BV(CTC1) | _BV(CS13) | _BV(CS12) | _BV(CS11);
        
        longWait = 1;
        pulsePart = 0;
        
        // blink the led
        if (ledState == 0) {
          digitalWrite(0, HIGH);
          ledState = 1;
        } else {
          digitalWrite(0, LOW);
          ledState = 0;
        }
      }
      
      // reset timer
      TCNT1 = 0;
    }
  }
}
