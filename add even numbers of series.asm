	   LXI H,2200 // load data from 2200 in M which is count = no of element in series
	   MOV C,M// store count into C 
	   MVI B,00// work as temp
	   INX H// take next values from memory

LOOP:	   MOV A,M//copy memory number into A
	   ANI 01// it give LSB 
// LSB = 1 -> odd
// LSB = 0 -> even
	   JNZ LOOP1
	   MOV A,B
	   ADD M // add even number
	   MOV B,A

LOOP1:	   INX H
	   DCR C
	   JNZ LOOP
	   STA 3000
	   HLT
# ORG 2200
# DB 05H,01H,02H,04H,05H,08H
