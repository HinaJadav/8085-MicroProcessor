	   MVI B,05

LOOP1:	   LXI H,2201
	   MOV C,M
	   INX H

LOOP2:	   MOV A,M
	   INX H
	   MOV D,M
	   CMP D
	   JM OOP3
	   MOV M,A
	   DCX H
	   MOV M,D
	   INX H

LOOP3:	   DCR C
	   JNZ LOOP2
	   DCR B
	   JNZ LOOP1
	   HLT
# ORG 3000
# DB 05H, 05H,04H,03H,02H,01H
