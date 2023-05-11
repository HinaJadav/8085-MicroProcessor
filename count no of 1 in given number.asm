// Count the number of 1’s in the content of the D Register and store the count in the B Register
// Constraint Data is at memory location 40A2 H
// Test Case Input (40A2H) = 16H
// Output B = 03H
	   LXI H,40A2
	   MOV A,M
	   MVI D,08
	   MVI C,00

LOOP:	   RAL
	   JNC LOOP1
	   INR C

LOOP1:	   DCR D
	   JNZ LOOP
	   MOV A,C
	   STA 3000
	   HLT
# ORG 40A2
# DB 16H
