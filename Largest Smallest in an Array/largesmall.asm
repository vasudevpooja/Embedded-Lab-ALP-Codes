	AREA LARGESMALL,CODE,READONLY
ENTRY
START
	MOV R1,#05
	SUB R1,R1,#01
OUTER MOV R4, R1
	LDR R0,=0X00008000
BACK LDR R2,[R0]
	LDR R3,[R0,#04]!
	CMP R2,R3
	BHI NEXT
	STR R2,[R0]
	STR R3,[R0,#-04]
NEXT SUBS R4,R4,#01
	BNE BACK
	SUBS R1,R1,#01
	BNE OUTER
	LDR R0,=0X00008000
	LDR R6,[R0]
	LDR R7, [R0,#0X10]
AGAIN B AGAIN
	END