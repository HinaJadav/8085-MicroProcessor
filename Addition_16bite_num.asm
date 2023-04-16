// sum of 16bit number
	   MVI C,00	// use for last generated carry
	   LDA 2000	// load first number LSB
	   MOV B,A
	   LDA 2002	// load second number LSB
	   ADD B	// here we apply simple ADD operation because we have not any type of carry
	   DAA	// bcz we apply addition on decimal number
	   STA 2004	// store sum of LSB
	   LDA 2001	// load first number MSB
	   MOV B,A
	   LDA 2003	// load second number MSB
	   ADC B	// here we use ADC bcz from sum LSB we may have carry and we must include previous carry in this sum
	   DAA
	   STA 2005
	   JNC SKIP	// check for last generated carry
	   INR C

SKIP:	   MOV A,C
	   STA 2006
	   HLT
// first num = 9384 && second num = 1845
// Ans = 11229 in decimal
// logic = add LSB using ADD and store ans, add MSB usind ADC and store ans, from next address if carry generated by MSB addition than store otherwise skip that step
# ORG 2000H
# DB 84H, 93H, 45H, 18H
