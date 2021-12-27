		AREA PROGRAM, CODE, READONLY
	ENTRY
	ARM
START
		LDR R1, =thumb_code+1
		LDR R0, =0x00009000
		LDR R3, [R0]
		LDR R8, [R0, #04]
		SUB R5, R3, R8
		MOV LR, PC
		BX R1
		THUMB 
thumb_code
		ADD R3, R3, R8
		BX LR
AGAIN
	END