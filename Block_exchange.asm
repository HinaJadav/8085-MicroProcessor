// Block Exchange
	   LXI B,2000
	   LXI D,4000
	   MVI L,02

BACK:	   LDAX B
	   MOV H,A
	   LDAX D
	   STAX B
	   MOV A,H
	   STAX D
	   INX B
	   INX D
	   DCR L
	   JNZ BACK
	   HLT
# ORG 2000H
# DB 01H, 02H
# ORG 4000H
# DB 11H,22H
