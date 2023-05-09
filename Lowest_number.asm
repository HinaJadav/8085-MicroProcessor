// Find Lowest number from given numbers
	   LXI H,2000
	   MVI C,05
	   MVI A,FF // for lowest num initialize A = FF

BACK:	   CMP M	// here we compare mamory location M value with value which present in A
	   JC SKIP // here we check for carry bcz if next number is large than it generate carry 
	   MOV A,M

SKIP:	   INX H
	   DCR C
	   JNZ BACK
	   MOV M,A	// After last iteration PC points to address last location and that memory location we use to store our MAX number
	   HLT
# ORG 2000H
# DB 01H, 12H,06H,03H,10H
