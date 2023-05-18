// Calculate the sum of a series of odd numbers from the list of numbers // The length of the list is in memory location 3000H and the series itself begins from memory location 3001H Assume the sum to be 16-bit Store the sum at memory locations 3300H and 3301H
// Test Case Input (3000H) = 05H
// Total number in series (3001H) = 20H (3003H) = 13H (3005H) = FFH (3002H) = 15H (3004H) = 22H
// Output Store the result at two memory locations; the sum would be 16 bits (3300H) = 27H (3301H) = 01
	   LXI H,3000	// load first data from 3000 into M which is no of numbers into series
	   MOV C,M	// move no into C as count
	   MVI B,00
	   INX H	// take first number into M
	   MVI D,00	// it store carry

LOOP:	   MOV A,M	// move data M to A
	   ANI 01	// find LSB
	   JZ NEXT	// if number is even than go to NEXT
	   MOV A,B	// initiallize A = B
	   ADD M	// add number into A
	   JNC LOOP1	// jump bcz no carry is generated
	   INR D	// if carry is generated than store CF into D everytime

LOOP1:	   MOV B,A	// move updated data into B from A

NEXT:	   INX H	// take next number
	   DCR C	// decrement of count
	   JNZ LOOP	// jump is count > 0
	   STA 3300	// store sum ans at 3300
	   MOV A,D	// copy sum_of_carry int A
	   STA 3301	// store carry value into 3301
	   HLT
# ORG 3000
# DB 05H, 20H, 13H, FFH, 15H, 22H
