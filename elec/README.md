# Electronic
This folder contains needed electronics schema made with Kicad software for building working solution for 2 bots
positioning.

## Kicad projects
### 25kHz emitter
Electronic schematics and PCB drawings are made in [emetteur 25khz](emetteur%2025khz) project.

PDF schematics [here](../doc/elec/25khz_emitter_schematics.pdf)

### 32.8kHz emitter
Electronic schematics and PCB drawings are made in [emetteur 32khz](emetteur%2032khz) project.

PDF schematics [here](../doc/elec/32khz_emitter_schematics.pdf)

### 3 sets of 25kHz receivers
Electronic schematics and PCB drawings are made in [recepteur 25khz](recepteur%2025khz) project.

PDF schematics [here](../doc/elec/25khz_receiver_schematics.pdf)

Project contains stuff for building 2 fixed receiving beacons made of 2 ultrasonic receivers and 1 fixed receiving
beacon made of 3 ultrasonic receivers.

This projects contains other cards, see after.

### 3 sets of 32.8kHz receivers
Electronic schematics and PCB drawings are made in [recepteur 32khz](recepteur%2032khz) project.

PDF schematics [here](../doc/elec/32khz_receiver_schematics.pdf)

Project contains stuff for building 2 fixed receiving beacons made of 2 ultrasonic receivers and 1 fixed receiving
beacon made of 3 ultrasonic receivers.

### 3 power cards
Electronic schematics and PCB drawings are made in [recepteur 25khz](recepteur%2025khz) project.

Those 3 power cards are made for powering receiving cards and aggregating receiving cards signal to output them on one
connector.

### RF card
Electronic schematics and PCB drawings are made in [recepteur 25khz](recepteur%2025khz) project.

This RF card made for running TDOA algorithm with signals given from 3 power cards on a teensy microcontroller, found
position is expected to be transmitted by serial to RF card.

## Bill Of Material
### 25kHz emitter
| Item         | Qty | Reference(s)                                                            | RadioSpares ref    |
|--------------|-----|-------------------------------------------------------------------------|--------------------|
| 100n         | 1   | C1                                                                      | 264-4416           |
| LED          | 1   | D1                                                                      |                    |
| ATTINY45-P   | 1   | IC1                                                                     | 696-2614           |
| CONN_2       | 5   | P1, P3, P4, P5, P6                                                      | 163-5303, 163-5305 |
| 2N3904       | 8   | Q1, Q4, Q5, Q7, Q9, Q12, Q14, Q16                                       | 739-0397           |
| 2N3906       | 8   | Q2, Q3, Q6, Q8, Q10, Q11, Q13, Q15                                      | 739-0375           |
| 22k          | 16  | R1, R2, R4, R5, R7, R8, R9, R10, R11, R12, R16, R17, R18, R19, R20, R21 | 740-9016           |
| 1k           | 5   | R3, R6, R13, R14, R15                                                   | 740-8971           |
| 10k          | 1   | R22                                                                     | 740-9072           |
| R-78E5.0-0.5 | 1   | REGUL1                                                                  | 757-7239           |
| SWITCH       | 1   | U1                                                                      | 734-7315           |

+ 4 25kHz Ultrasonic transmitters

### 32.8kHz emitter
| Item         | Qty | Reference(s)                                                            | RadioSpares ref    |
|--------------|-----|-------------------------------------------------------------------------|--------------------|
| 100n         | 1   | C1                                                                      | 264-4416           |
| LED          | 1   | D1                                                                      |                    |
| ATTINY45-P   | 1   | IC1                                                                     | 696-2614           |
| CONN_2       | 5   | P1, P3, P4, P5, P6                                                      | 163-5303, 163-5305 |
| 2N3904       | 8   | Q1, Q4, Q5, Q7, Q9, Q12, Q14, Q16                                       | 739-0397           |
| 2N3906       | 8   | Q2, Q3, Q6, Q8, Q10, Q11, Q13, Q15                                      | 739-0375           |
| 22k          | 16  | R1, R2, R4, R5, R7, R8, R9, R10, R11, R12, R16, R17, R18, R19, R20, R21 | 740-9016           |
| 1k           | 5   | R3, R6, R13, R14, R15                                                   | 740-8971           |
| 10k          | 1   | R22                                                                     | 740-9072           |
| R-78E5.0-0.5 | 1   | REGUL1                                                                  | 757-7239           |
| SWITCH       | 1   | U1                                                                      | 734-7315           |

+ 4 32.8kHz Ultrasonic transmitters

### 25kHz receivers + power cards + RF card
| Value            | Qty | Reference(s)                                                                                                                                                                                            | RadioSpares ref    |
|------------------|-----|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| 10n              | 14  | C1, C5, C12, C16, C23, C27, C34, C38, C45, C49, C56, C60, C67, C71                                                                                                                                      | 264-4371           |
| 470p             | 14  | C2, C8, C13, C19, C24, C30, C35, C41, C46, C52, C57, C63, C68, C74                                                                                                                                      | 264-4315           |
| 47n              | 14  | C3, C4, C14, C15, C25, C26, C36, C37, C47, C48, C58, C59, C69, C70                                                                                                                                      | 147-998            |
| 100n             | 21  | C6, C7, C11, C17, C18, C22, C28, C29, C33, C39, C40, C44, C50, C51, C55, C61, C62, C66, C72, C73, C77                                                                                                   | 264-4416           |
| 1n               | 14  | C9, C10, C20, C21, C31, C32, C42, C43, C53, C54, C64, C65, C75, C76                                                                                                                                     | 264-4337           |
| 10µ              | 6   | C78, C79, C80, C81, C82, C83                                                                                                                                                                            | 440-6553           |
| 1µ               | 1   | C84                                                                                                                                                                                                     |                    |
| DIODESCH         | 42  | D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D39, D41, D43, D45, D47, D49, D51, D53, D55, D57, D59, D61, D63, D65 | 743-5894           |
| LED              | 10  | D29, D30, D31, D32, D33, D34, D35, D36, D37, D38                                                                                                                                                        |                    |
| ZENER            | 14  | D40, D42, D44, D46, D48, D50, D52, D54, D56, D58, D60, D62, D64, D66                                                                                                                                    | 710-4216           |
| ATTINY45-P       | 7   | IC1, IC2, IC3, IC4, IC5, IC6, IC7                                                                                                                                                                       | 696-2614           |
| TEENSY           | 1   | IC8                                                                                                                                                                                                     |                    |
| CONN_3           | 1   | K1                                                                                                                                                                                                      | 163-5303, 163-5305 |
| CONN_6           | 6   | P1, P4, P5, P8, P10, P17                                                                                                                                                                                | 163-5303, 163-5305 |
| CONN_2           | 6   | P2, P3, P6, P7, P12, P13                                                                                                                                                                                | 163-5303, 163-5305 |
| CONN_5           | 2   | P9, P19                                                                                                                                                                                                 | 163-5303, 163-5305 |
| CONN_7           | 7   | P11, P14, P15, P16, P18, P20, P21                                                                                                                                                                       | 163-5303, 163-5305 |
| CONN_4           | 1   | P22                                                                                                                                                                                                     | 163-5303, 163-5305 |
| 1k               | 21  | R1, R2, R5, R11, R12, R13, R14, R17, R27, R33, R34, R37, R45, R46, R49, R55, R56, R59, R65, R66, R69                                                                                                    | 740-8971           |
| 10k              | 37  | R3, R4, R8, R15, R16, R20, R23, R24, R25, R26, R30, R35, R36, R40, R43, R44, R47, R48, R52, R57, R58, R62, R67, R68, R72, R75, R76, R77, R78, R79, R80, R81, R82, R83, R84, R85, R86                    | 740-9072           |
| 47k              | 28  | R6, R7, R9, R10, R18, R19, R21, R22, R28, R29, R31, R32, R38, R39, R41, R42, R50, R51, R53, R54, R60, R61, R63, R64, R70, R71, R73, R74                                                                 | 740-9035           |
| 2.2k             | 14  | R87, R88, R89, R90, R91, R92, R93, R94, R95, R96, R97, R98, R99, R100                                                                                                                                   | 810-1750           |
| RFBEE            | 1   | RF1                                                                                                                                                                                                     |                    |
| TL074            | 7   | U1, U2, U3, U4, U9, U10, U11                                                                                                                                                                            | 302-621            |
| R-78E5.0-0.5     | 3   | U5, U7, U12                                                                                                                                                                                             | 757-7239           |
| NCP1117DT12RKG   | 3   | U6, U8, U13                                                                                                                                                                                             | 518-8341           |
| SWITCH           | 3   | U14, U15, U16                                                                                                                                                                                           | 734-7315           |
| LP2950ACDT-3.3RG | 1   | U17                                                                                                                                                                                                     | 805-1416           |
| ULTRASON         | 7   | US1, US2, US3, US4, US5, US6, US7                                                                                                                                                                       |                    |

### 32.8kHz receivers
| Value      | Qty | Reference(s)                                                                                                                            | RadioSpares ref    |
|------------|-----|-----------------------------------------------------------------------------------------------------------------------------------------|--------------------|
| 6.8n       | 14  | C1, C5, C12, C16, C23, C27, C34, C38, C45, C49, C56, C60, C67, C71                                                                      |                    |
| 220p       | 14  | C2, C8, C13, C19, C24, C30, C35, C41, C46, C52, C57, C63, C68, C74                                                                      | 264-4309           |
| 47n        | 14  | C3, C4, C14, C15, C25, C26, C36, C37, C47, C48, C58, C59, C69, C70                                                                      | 147-998            |
| 100n       | 21  | C6, C7, C11, C17, C18, C22, C28, C29, C33, C39, C40, C44, C50, C51, C55, C61, C62, C66, C72, C73, C77                                   | 264-4416           |
| 1n         | 7   | C9, C20, C31, C42, C53, C64, C75                                                                                                        | 264-4337           |
| 2.2n       | 7   | C10, C21, C32, C43, C54, C65, C76                                                                                                       | 264-4359           |
| DIODESCH   | 28  | D1, D2, D3, D4, D5, D6, D7, D8, D9, D10, D11, D12, D13, D14, D15, D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28       | 743-5894           |
| LED        | 7   | D29, D30, D31, D32, D33, D34, D35                                                                                                       |                    |
| ATTINY45-P | 7   | IC1, IC2, IC3, IC4, IC5, IC6, IC7                                                                                                       | 696-2614           |
| CONN_6     | 2   | P4, P5                                                                                                                                  | 163-5303, 163-5305 |
| CONN_7     | 1   | P11                                                                                                                                     | 163-5303, 163-5305 |
| 1k         | 21  | R1, R2, R5, R11, R12, R13, R14, R17, R27, R33, R34, R37, R45, R46, R49, R55, R56, R59, R65, R66, R69                                    | 740-8971           |
| 22k        | 14  | R3, R8, R15, R20, R25, R30, R35, R40, R47, R52, R57, R62, R67, R72                                                                      | 740-9016           |
| 6.8k       | 7   | R4, R16, R26, R36, R48, R58, R68                                                                                                        | 810-1889           |
| 47k        | 28  | R6, R7, R9, R10, R18, R19, R21, R22, R28, R29, R31, R32, R38, R39, R41, R42, R50, R51, R53, R54, R60, R61, R63, R64, R70, R71, R73, R74 | 740-9035           |
| 10k        | 7   | R77, R78, R79, R80, R81, R82, R83                                                                                                       | 740-9072           |
| TL074      | 7   | U1, U2, U3, U4, U9, U10, U11                                                                                                            | 302-621            |
| ULTRASON   | 7   | US1, US2, US3, US4, US5, US6, US7                                                                                                       |                    |