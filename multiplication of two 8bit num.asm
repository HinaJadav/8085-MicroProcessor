// multiplication of 8bit number(ex = X*Y)
// Idea = here no of iteration = X and every time i add Y into A 
// so i add X times Y into A which is = X*Y
	   LXI H,2000 // take data at 2000 in M
	   MOV C,M // copy M data into C
	   INX H//increment H for next value
	   MOV B,M//copy M data into B

LOOP:	   ADD B//add B into A
	   DCR C// increment C
	   JNZ LOOP // jump if C != 0
	   STA 3000//store final A value at 3000
	   HLT// holt
# ORG 2000
# DB 0AH,0AH
