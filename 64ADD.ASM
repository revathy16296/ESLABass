	AREA ADDITION, CODE, READONLY
	ENTRY
START
	LDR R0,=Value1
	LDR R1,[R0]
	LDR R2,[R0, #4]
	LDR R3,=Value2
	LDR R4,[R3]
	LDR R5,[R3, #4]

	ADDS R6,R1,R4
	ADC R7,R2,R5
	
	SWI &11
	
Value1 DCD &11111111, &33333333
Value2 DCD &22222222, &44444444
	
	END 