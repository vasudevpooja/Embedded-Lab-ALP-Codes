		AREA MULARRAYS, CODE, READONLY
ENTRY
START
		
		LDR R4,=0x00000000
		LDR R1,=0x00008000;
		LDR R2,=0X00008020;
		LDR R3,=0X0000800A
BACK	LDRH R5,[R1],#0x02
		LDRH R6,[R2],#0x02
		MUL R7,R5,R6
		ADD R4,R4,R7
		CMP R1,R3
		BNE BACK
		STR R4,[R1,#02]
AGAIN	B AGAIN
		END