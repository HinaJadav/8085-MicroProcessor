// BCD to HEX conversion of a byte
// Input (2201H) = 28
// Output (2202H) = 1CH
	   LDA 2201	// load data from [2201] into A
	   MOV B,A	// copy that data at B
	   ANI 0F	// for get LSB of number we do AND operation (08)
	   MOV C,A	// store LSB into C
	   MOV A,B	// again store real number into A
	   ANI F0	// for get MSB of number -> first do AND operation here we get (30) but we need (03) so rotat A 4 time either right or left so we can get but without include carry into it and we get (03)
	   RRC
	   RRC
	   RRC
	   RRC
	   MOV D,A	// store 03 into D
// now, HEX = ((MSB) * (0A)) + LSB
	   MVI E,0A
	   XRA A

LOOP:	   ADD E
	   DCR D
	   JNZ LOOP	// at the end of this loop we get ((MSB) * (0A))
	   ADD C	// add LSB
	   STA 2202	// store ans
	   HLT
# ORG 2201
# DB 80
