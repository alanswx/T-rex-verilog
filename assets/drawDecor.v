
// The following content is generated by ./AutoGenerate.py
// Written by Zijian Zhao
// github.com/JackZhao98

module drawDecor#(parameter ratio = 1)
	(
	    input wire animateClk,
	    input wire rst,
	    input wire [9:0] ox,
	    input wire [8:0] oy,
	    input wire [9:0] X,
	    input wire [8:0] Y,
	    input wire [3:0] select,	// Select Pattern
	    output wire [11:0] objectWidth,
	    output wire [6:0] objectHeight,
	    output reg inHitBox,
	    output reg inWhite,
	    output reg inGrey);
		
localparam px = ratio;


// Auto Generated: Decor/Cloud
localparam CloudWidth = 92 * px;
localparam CloudHeight = 27 * px;
wire inHitBox_Cloud;
wire inGrey_Cloud;
wire inBlank_Cloud;
wire inWhite_Cloud;

assign inHitBox_Cloud = (X > ox) && (X <= CloudWidth) && (Y > oy) && (Y <= CloudHeight);

assign inGrey_Cloud = 
     (X > ox + 50 * px) && (X <= ox + 57 * px) && (Y > oy) && (Y <= oy) ||
     (X > ox + 50 * px) && (X <= ox + 57 * px) && (Y > oy + 1 * px) && (Y <= oy + 1 * px) ||
     (X > ox + 40 * px) && (X <= ox + 51 * px) && (Y > oy + 2 * px) && (Y <= oy + 2 * px) ||
     (X > ox + 56 * px) && (X <= ox + 61 * px) && (Y > oy + 2 * px) && (Y <= oy + 2 * px) ||
     (X > ox + 40 * px) && (X <= ox + 51 * px) && (Y > oy + 3 * px) && (Y <= oy + 3 * px) ||
     (X > ox + 56 * px) && (X <= ox + 61 * px) && (Y > oy + 3 * px) && (Y <= oy + 3 * px) ||
     (X > ox + 38 * px) && (X <= ox + 41 * px) && (Y > oy + 4 * px) && (Y <= oy + 4 * px) ||
     (X > ox + 60 * px) && (X <= ox + 61 * px) && (Y > oy + 4 * px) && (Y <= oy + 4 * px) ||
     (X > ox + 38 * px) && (X <= ox + 41 * px) && (Y > oy + 5 * px) && (Y <= oy + 5 * px) ||
     (X > ox + 60 * px) && (X <= ox + 63 * px) && (Y > oy + 5 * px) && (Y <= oy + 5 * px) ||
     (X > ox + 34 * px) && (X <= ox + 39 * px) && (Y > oy + 6 * px) && (Y <= oy + 6 * px) ||
     (X > ox + 60 * px) && (X <= ox + 63 * px) && (Y > oy + 6 * px) && (Y <= oy + 6 * px) ||
     (X > ox + 34 * px) && (X <= ox + 39 * px) && (Y > oy + 7 * px) && (Y <= oy + 7 * px) ||
     (X > ox + 62 * px) && (X <= ox + 63 * px) && (Y > oy + 7 * px) && (Y <= oy + 7 * px) ||
     (X > ox + 34 * px) && (X <= ox + 35 * px) && (Y > oy + 8 * px) && (Y <= oy + 8 * px) ||
     (X > ox + 62 * px) && (X <= ox + 63 * px) && (Y > oy + 8 * px) && (Y <= oy + 8 * px) ||
     (X > ox + 34 * px) && (X <= ox + 35 * px) && (Y > oy + 9 * px) && (Y <= oy + 9 * px) ||
     (X > ox + 62 * px) && (X <= ox + 69 * px) && (Y > oy + 9 * px) && (Y <= oy + 9 * px) ||
     (X > ox + 34 * px) && (X <= ox + 35 * px) && (Y > oy + 10 * px) && (Y <= oy + 10 * px) ||
     (X > ox + 62 * px) && (X <= ox + 69 * px) && (Y > oy + 10 * px) && (Y <= oy + 10 * px) ||
     (X > ox + 34 * px) && (X <= ox + 35 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox + 62 * px) && (X <= ox + 63 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox + 68 * px) && (X <= ox + 79 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox + 28 * px) && (X <= ox + 35 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 62 * px) && (X <= ox + 63 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 68 * px) && (X <= ox + 79 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 28 * px) && (X <= ox + 35 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 60 * px) && (X <= ox + 61 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 78 * px) && (X <= ox + 79 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 26 * px) && (X <= ox + 29 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 60 * px) && (X <= ox + 61 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 78 * px) && (X <= ox + 79 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 26 * px) && (X <= ox + 29 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox + 78 * px) && (X <= ox + 85 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox + 12 * px) && (X <= ox + 27 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 78 * px) && (X <= ox + 85 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 12 * px) && (X <= ox + 27 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 84 * px) && (X <= ox + 85 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 10 * px) && (X <= ox + 13 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 84 * px) && (X <= ox + 85 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 10 * px) && (X <= ox + 13 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 84 * px) && (X <= ox + 89 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 10 * px) && (X <= ox + 11 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 84 * px) && (X <= ox + 89 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 10 * px) && (X <= ox + 11 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 88 * px) && (X <= ox + 89 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 10 * px) && (X <= ox + 11 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 88 * px) && (X <= ox + 89 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 2 * px) && (X <= ox + 5 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 8 * px) && (X <= ox + 11 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 18 * px) && (X <= ox + 19 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 90 * px) && (X <= ox + 91 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 2 * px) && (X <= ox + 5 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 8 * px) && (X <= ox + 11 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 18 * px) && (X <= ox + 19 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 90 * px) && (X <= ox + 91 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 20 * px) && (X <= ox + 91 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 20 * px) && (X <= ox + 91 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px);
	// Total 120 lines.

assign inWhite_Cloud = inHitBox_Cloud & ~inBlank_Cloud & ~inGrey_Cloud;

// End of Auto Generate: Decor/Cloud

always @(*) begin

case(select) begin
4'b0000: begin
	inHitBox <= inHitBox_Cloud;
	inWhite <= inWhite_Cloud;
	inGrey <= inGrey_Cloud;
end


endcase

end // end of always @(*)

/* Enter Selector Code here */



endmodule // end of Decor
