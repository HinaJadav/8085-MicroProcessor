// Addition of 8bit number
	   LXI H,2000// take memory address 2000 data in M
	   MOV A,M	// move data from M to A
	   INX H	// increment HL register pair for next value
	   MOV B,M	// move next value from M to B
	   ADD B	// add register B value into A
	   STA 3000	// store A value at address 3000
# ORG 2000
# DB 0AH,02H
