// find sum of N numbers
	   LXI H,2000
	   MVI C,05
	   MVI A,00	// use for store sums
	   MVI B,00	// it store all carries

BACK:	   ADD M
	   JNC SKIP
	   INR B

SKIP:	   INX H
	   DCR C
	   JNZ BACK
	   MOV M,A
	   INX H
	   MOV M,B
	   HLT
# ORG 2000H
# DB 01H, 02H,03H,04H,FFH
