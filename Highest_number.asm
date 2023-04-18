// Find highest number from given numbers
	   LXI H,2000
	   MVI C,05
	   MVI A,00 // for lowest num initialize A = 00

BACK:	   CMP M	// here we compare mamory location M value with value which present in A
	   JNC SKIP  // here we check for carry bcz if [M] > [A] than it ganret 
	   MOV A,M

SKIP:	   INX H
	   DCR C
	   JNZ BACK
	   MOV M,A	// After last iteration PC points to address last location and that memory location we use to store our MAX number
	   HLT
# ORG 2000H
# DB 01H, 12H,06H,03H,10H
