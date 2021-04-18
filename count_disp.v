/*
 * FILE:	count_disp.v 
 * AUTHOR:	Shahab Sadeghinejad
 *
 * This program is a binary counter controlled using switches 0 through 3,
 * which displays the output on the first 7-seg display as a hex value.
 */

module count_disp
(
input s0,s1,s2,s3,	// switches
output reg [6:0] d	// 7-seg
);
	// Concat switches to 4-bit wire f
	wire [3:0] f = {s3,s2,s1,s0};

	// Bits for each 7-seg pin to display correct value
	localparam 	ZERO	= 7'b1000000,
				ONE		= 7'b1111001,
				TWO		= 7'b0100100,
				THREE	= 7'b0110000,
				FOUR	= 7'b0011001,
				FIVE	= 7'b0010010,
				SIX		= 7'b0000010,
				SEVEN	= 7'b1111000,
				EIGHT	= 7'b0000000,
				NINE	= 7'b0011000,
				A		= 7'b0001000,
				B		= 7'b0000011,
				C		= 7'b1000110,
				D		= 7'b0100001,
				E		= 7'b0000100,
				F		= 7'b0001110,
				OFF		= 7'b1111111;
	
	// Output on switches --> set display
	always @(f) begin
		case(f)
			4'b0000:  d = ZERO;
			4'b0001:  d = ONE;
			4'b0010:  d = TWO;
			4'b0011:  d = THREE;
			4'b0100:  d = FOUR;
			4'b0101:  d = FIVE;
			4'b0110:  d = SIX;
			4'b0111:  d = SEVEN;
			4'b1000:  d = EIGHT;
			4'b1001:  d = NINE;
			4'b1010:  d = A;
			4'b1011:  d = B;
			4'b1100:  d = C;
			4'b1101:  d = D;
			4'b1110:  d = E;
			4'b1111:  d = F;
		endcase
	end
endmodule