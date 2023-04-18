// determine the GCD of two numbers
// Let the two numbers be stored at two consecutive memory locations from 2201H
// Save the result at memory location 2203H
// Test Case
// Input (2201H) = 1CH (2202H) = 15H
// Output (2203H) = 07H
	   LXI H,2201 // load data from 2201 into M
	   MOV A,M // store first num into A
	   INX H// take next num into M
	   MOV B,M// store sec num into B

LOOP:	   CMP B// compare A with B
	   JZ GCD// ZF = 1 if A = B
	   JC SWAP // CY = 1 if A < B
// otherwise A > B
	   SUB B // if A > B do A - B util A = B
	   JMP LOOP

SWAP:	   MOV C,B // if A < B than swap A and B and make A > B
	   MOV B,A
	   MOV A,C
	   JMP LOOP // again do loop 

GCD:	   INX H // if A = B than A is GCD
	   MOV M,A // store ans
	   HLT
# ORG 2201
# DB 1CH,15H
