// In this code we use memory location
// this type of code is more flexibal and consume less size
	   MVI C,00
	   LXI H,4000
	   MOV A,M
	   INX H
	   ADD M
	   JNC SKIP
	   INR C

SKIP:	   INX H
	   MOV M,A
	   INX H
	   MOV M,C
	   HLT
# ORG 4000H
# DB FFH, FFH
