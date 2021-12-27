AREA PROGRAM,CODE,READONLY
ENTRY
START
LDR R1,=0X00008000
LDR R4,[R1,#0X04] ;R4 has the contents of 8004
LDR R5,[R1,#0X0C]
ADDS R6,R5,R4 ;R4 has the LSB part of the 1st no.(33 33 44 44) R5 has the MSB part of the 2nd no(77 77 88 88)
STR R6,[R1,#0X14]
LDR R4,[R1]
LDR R5,[R1,#0X08]
ADC R6,R5,R4 ;R4 has the MSB part of the 1st no.(11 11 22 22) R5 has the MSB part of the 2nd no(55 55 66 66)
STR R6,[R1,#0X10]
AGAIN B AGAIN
END