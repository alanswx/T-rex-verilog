
// The following content is generated by ./AutoGenerate.py
// Written by Zijian Zhao
// github.com/JackZhao98

module drawBird#(parameter ratio = 1),
(
	    input wire animateClk,
	    input wire rst,
	    input wire [9:0] ox,
	    input wire [8:0] oy,
	    input wire [9:0] X,
	    input wire [8:0] Y,
	    input wire [2:0] select,	// Select Pattern
	    output wire [11:0] objectWidth,
	    output wire [6:0] objectHeight,
	    output wire inHitBox,
	    output wire inWhite,
	    output wire inGrey);

		
localparam px = ratio
// Auto Generated: Bird/BirdDown
localparam BirdDownWidth = 92 * px;
localparam BirdDownHeight = 80 * px;
wire inHitBox_BirdDown;
wire inGrey_BirdDown;
wire inBlank_BirdDown;
wire inWhite_BirdDown;

assign inHitBox_BirdDown = (X > ox) && (X <= BirdDownWidth) && (Y > oy) && (Y <= BirdDownHeight);

assign inBlank_BirdDown = 
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 28 * px) && (X <= ox + 91 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 28 * px) && (X <= ox + 91 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 28 * px) && (X <= ox + 91 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox + 28 * px) && (X <= ox + 91 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 32 * px) && (X <= ox + 91 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 32 * px) && (Y <= oy + 32 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 33 * px) && (Y <= oy + 33 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 34 * px) && (Y <= oy + 34 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 35 * px) && (Y <= oy + 35 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 40 * px) && (Y <= oy + 40 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 41 * px) && (Y <= oy + 41 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 42 * px) && (Y <= oy + 42 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 43 * px) && (Y <= oy + 43 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 56 * px) && (Y <= oy + 56 * px) ||
     (X > ox + 72 * px) && (X <= ox + 91 * px) && (Y > oy + 56 * px) && (Y <= oy + 56 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 57 * px) && (Y <= oy + 57 * px) ||
     (X > ox + 72 * px) && (X <= ox + 91 * px) && (Y > oy + 57 * px) && (Y <= oy + 57 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 58 * px) && (Y <= oy + 58 * px) ||
     (X > ox + 72 * px) && (X <= ox + 91 * px) && (Y > oy + 58 * px) && (Y <= oy + 58 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 59 * px) && (Y <= oy + 59 * px) ||
     (X > ox + 72 * px) && (X <= ox + 91 * px) && (Y > oy + 59 * px) && (Y <= oy + 59 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 60 * px) && (Y <= oy + 60 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 60 * px) && (Y <= oy + 60 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 61 * px) && (Y <= oy + 61 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 61 * px) && (Y <= oy + 61 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 62 * px) && (Y <= oy + 62 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 62 * px) && (Y <= oy + 62 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 63 * px) && (Y <= oy + 63 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 63 * px) && (Y <= oy + 63 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 64 * px) && (Y <= oy + 64 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 64 * px) && (Y <= oy + 64 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 65 * px) && (Y <= oy + 65 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 65 * px) && (Y <= oy + 65 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 66 * px) && (Y <= oy + 66 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 66 * px) && (Y <= oy + 66 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 67 * px) && (Y <= oy + 67 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 67 * px) && (Y <= oy + 67 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 68 * px) && (Y <= oy + 68 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 68 * px) && (Y <= oy + 68 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 69 * px) && (Y <= oy + 69 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 69 * px) && (Y <= oy + 69 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 70 * px) && (Y <= oy + 70 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 70 * px) && (Y <= oy + 70 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 71 * px) && (Y <= oy + 71 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 71 * px) && (Y <= oy + 71 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 72 * px) && (Y <= oy + 72 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 72 * px) && (Y <= oy + 72 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 73 * px) && (Y <= oy + 73 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 73 * px) && (Y <= oy + 73 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 74 * px) && (Y <= oy + 74 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 74 * px) && (Y <= oy + 74 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 75 * px) && (Y <= oy + 75 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 75 * px) && (Y <= oy + 75 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 76 * px) && (Y <= oy + 76 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 76 * px) && (Y <= oy + 76 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 77 * px) && (Y <= oy + 77 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 77 * px) && (Y <= oy + 77 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 78 * px) && (Y <= oy + 78 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 78 * px) && (Y <= oy + 78 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 79 * px) && (Y <= oy + 79 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 79 * px) && (Y <= oy + 79 * px);
	// Total 240 lines.

assign inGrey_BirdDown = 
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 32 * px) && (Y <= oy + 32 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 33 * px) && (Y <= oy + 33 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 34 * px) && (Y <= oy + 34 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 35 * px) && (Y <= oy + 35 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 36 * px) && (Y <= oy + 36 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 37 * px) && (Y <= oy + 37 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 38 * px) && (Y <= oy + 38 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 39 * px) && (Y <= oy + 39 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 40 * px) && (Y <= oy + 40 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 41 * px) && (Y <= oy + 41 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 42 * px) && (Y <= oy + 42 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 43 * px) && (Y <= oy + 43 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox + 36 * px) && (X <= ox + 83 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox + 36 * px) && (X <= ox + 83 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox + 36 * px) && (X <= ox + 83 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox + 36 * px) && (X <= ox + 83 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox + 36 * px) && (X <= ox + 71 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox + 36 * px) && (X <= ox + 71 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox + 36 * px) && (X <= ox + 71 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox + 36 * px) && (X <= ox + 71 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 56 * px) && (Y <= oy + 56 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 57 * px) && (Y <= oy + 57 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 58 * px) && (Y <= oy + 58 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 59 * px) && (Y <= oy + 59 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 60 * px) && (Y <= oy + 60 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 61 * px) && (Y <= oy + 61 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 62 * px) && (Y <= oy + 62 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 63 * px) && (Y <= oy + 63 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 64 * px) && (Y <= oy + 64 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 65 * px) && (Y <= oy + 65 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 66 * px) && (Y <= oy + 66 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 67 * px) && (Y <= oy + 67 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 68 * px) && (Y <= oy + 68 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 69 * px) && (Y <= oy + 69 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 70 * px) && (Y <= oy + 70 * px) ||
     (X > ox + 36 * px) && (X <= ox + 43 * px) && (Y > oy + 71 * px) && (Y <= oy + 71 * px) ||
     (X > ox + 36 * px) && (X <= ox + 39 * px) && (Y > oy + 72 * px) && (Y <= oy + 72 * px) ||
     (X > ox + 36 * px) && (X <= ox + 39 * px) && (Y > oy + 73 * px) && (Y <= oy + 73 * px) ||
     (X > ox + 36 * px) && (X <= ox + 39 * px) && (Y > oy + 74 * px) && (Y <= oy + 74 * px) ||
     (X > ox + 36 * px) && (X <= ox + 39 * px) && (Y > oy + 75 * px) && (Y <= oy + 75 * px);
	// Total 120 lines.

assign inWhite_BirdDown = inHitBox_BirdDown & ~inBlank_BirdDown & ~inGrey_BirdDown;

// End of Auto Generate: Bird/BirdDown

// Auto Generated: Bird/BirdUp
localparam BirdUpWidth = 92 * px;
localparam BirdUpHeight = 80 * px;
wire inHitBox_BirdUp;
wire inGrey_BirdUp;
wire inBlank_BirdUp;
wire inWhite_BirdUp;

assign inHitBox_BirdUp = (X > ox) && (X <= BirdUpWidth) && (Y > oy) && (Y <= BirdUpHeight);

assign inBlank_BirdUp = 
     (X > ox) && (X <= ox + 31 * px) && (Y > oy) && (Y <= oy) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy) && (Y <= oy) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 1 * px) && (Y <= oy + 1 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 1 * px) && (Y <= oy + 1 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 2 * px) && (Y <= oy + 2 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 2 * px) && (Y <= oy + 2 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 3 * px) && (Y <= oy + 3 * px) ||
     (X > ox + 36 * px) && (X <= ox + 91 * px) && (Y > oy + 3 * px) && (Y <= oy + 3 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 4 * px) && (Y <= oy + 4 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 4 * px) && (Y <= oy + 4 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 5 * px) && (Y <= oy + 5 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 5 * px) && (Y <= oy + 5 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 6 * px) && (Y <= oy + 6 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 6 * px) && (Y <= oy + 6 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 7 * px) && (Y <= oy + 7 * px) ||
     (X > ox + 40 * px) && (X <= ox + 91 * px) && (Y > oy + 7 * px) && (Y <= oy + 7 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 8 * px) && (Y <= oy + 8 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 8 * px) && (Y <= oy + 8 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 9 * px) && (Y <= oy + 9 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 9 * px) && (Y <= oy + 9 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 10 * px) && (Y <= oy + 10 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 10 * px) && (Y <= oy + 10 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox + 44 * px) && (X <= ox + 91 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox) && (X <= ox + 19 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox + 48 * px) && (X <= ox + 91 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox) && (X <= ox + 15 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 52 * px) && (X <= ox + 91 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 56 * px) && (X <= ox + 91 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 56 * px) && (X <= ox + 91 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 56 * px) && (X <= ox + 91 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox) && (X <= ox + 11 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 56 * px) && (X <= ox + 91 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox) && (X <= ox + 7 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox + 60 * px) && (X <= ox + 91 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 32 * px) && (Y <= oy + 32 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 33 * px) && (Y <= oy + 33 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 34 * px) && (Y <= oy + 34 * px) ||
     (X > ox + 64 * px) && (X <= ox + 91 * px) && (Y > oy + 35 * px) && (Y <= oy + 35 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 36 * px) && (Y <= oy + 36 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 36 * px) && (Y <= oy + 36 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 37 * px) && (Y <= oy + 37 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 37 * px) && (Y <= oy + 37 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 38 * px) && (Y <= oy + 38 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 38 * px) && (Y <= oy + 38 * px) ||
     (X > ox) && (X <= ox + 3 * px) && (Y > oy + 39 * px) && (Y <= oy + 39 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 39 * px) && (Y <= oy + 39 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 40 * px) && (Y <= oy + 40 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 41 * px) && (Y <= oy + 41 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 42 * px) && (Y <= oy + 42 * px) ||
     (X > ox) && (X <= ox + 27 * px) && (Y > oy + 43 * px) && (Y <= oy + 43 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox) && (X <= ox + 31 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox) && (X <= ox + 35 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox + 88 * px) && (X <= ox + 91 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox) && (X <= ox + 39 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox) && (X <= ox + 39 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox) && (X <= ox + 39 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox) && (X <= ox + 39 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px) ||
     (X > ox + 84 * px) && (X <= ox + 91 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px) ||
     (X > ox) && (X <= ox + 43 * px) && (Y > oy + 56 * px) && (Y <= oy + 56 * px) ||
     (X > ox + 76 * px) && (X <= ox + 91 * px) && (Y > oy + 56 * px) && (Y <= oy + 56 * px) ||
     (X > ox) && (X <= ox + 43 * px) && (Y > oy + 57 * px) && (Y <= oy + 57 * px) ||
     (X > ox + 76 * px) && (X <= ox + 91 * px) && (Y > oy + 57 * px) && (Y <= oy + 57 * px) ||
     (X > ox) && (X <= ox + 43 * px) && (Y > oy + 58 * px) && (Y <= oy + 58 * px) ||
     (X > ox + 76 * px) && (X <= ox + 91 * px) && (Y > oy + 58 * px) && (Y <= oy + 58 * px) ||
     (X > ox) && (X <= ox + 43 * px) && (Y > oy + 59 * px) && (Y <= oy + 59 * px) ||
     (X > ox + 76 * px) && (X <= ox + 91 * px) && (Y > oy + 59 * px) && (Y <= oy + 59 * px);
	// Total 224 lines.

assign inGrey_BirdUp = 
     (X > ox + 32 * px) && (X <= ox + 35 * px) && (Y > oy + 4 * px) && (Y <= oy + 4 * px) ||
     (X > ox + 32 * px) && (X <= ox + 35 * px) && (Y > oy + 5 * px) && (Y <= oy + 5 * px) ||
     (X > ox + 32 * px) && (X <= ox + 35 * px) && (Y > oy + 6 * px) && (Y <= oy + 6 * px) ||
     (X > ox + 32 * px) && (X <= ox + 35 * px) && (Y > oy + 7 * px) && (Y <= oy + 7 * px) ||
     (X > ox + 32 * px) && (X <= ox + 39 * px) && (Y > oy + 8 * px) && (Y <= oy + 8 * px) ||
     (X > ox + 32 * px) && (X <= ox + 39 * px) && (Y > oy + 9 * px) && (Y <= oy + 9 * px) ||
     (X > ox + 32 * px) && (X <= ox + 39 * px) && (Y > oy + 10 * px) && (Y <= oy + 10 * px) ||
     (X > ox + 32 * px) && (X <= ox + 39 * px) && (Y > oy + 11 * px) && (Y <= oy + 11 * px) ||
     (X > ox + 32 * px) && (X <= ox + 43 * px) && (Y > oy + 12 * px) && (Y <= oy + 12 * px) ||
     (X > ox + 32 * px) && (X <= ox + 43 * px) && (Y > oy + 13 * px) && (Y <= oy + 13 * px) ||
     (X > ox + 32 * px) && (X <= ox + 43 * px) && (Y > oy + 14 * px) && (Y <= oy + 14 * px) ||
     (X > ox + 32 * px) && (X <= ox + 43 * px) && (Y > oy + 15 * px) && (Y <= oy + 15 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 16 * px) && (Y <= oy + 16 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 17 * px) && (Y <= oy + 17 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 18 * px) && (Y <= oy + 18 * px) ||
     (X > ox + 20 * px) && (X <= ox + 27 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 36 * px) && (X <= ox + 47 * px) && (Y > oy + 19 * px) && (Y <= oy + 19 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 20 * px) && (Y <= oy + 20 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 21 * px) && (Y <= oy + 21 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 22 * px) && (Y <= oy + 22 * px) ||
     (X > ox + 16 * px) && (X <= ox + 27 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 36 * px) && (X <= ox + 51 * px) && (Y > oy + 23 * px) && (Y <= oy + 23 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 36 * px) && (X <= ox + 55 * px) && (Y > oy + 24 * px) && (Y <= oy + 24 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 36 * px) && (X <= ox + 55 * px) && (Y > oy + 25 * px) && (Y <= oy + 25 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 36 * px) && (X <= ox + 55 * px) && (Y > oy + 26 * px) && (Y <= oy + 26 * px) ||
     (X > ox + 12 * px) && (X <= ox + 31 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox + 36 * px) && (X <= ox + 55 * px) && (Y > oy + 27 * px) && (Y <= oy + 27 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox + 36 * px) && (X <= ox + 59 * px) && (Y > oy + 28 * px) && (Y <= oy + 28 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox + 36 * px) && (X <= ox + 59 * px) && (Y > oy + 29 * px) && (Y <= oy + 29 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox + 36 * px) && (X <= ox + 59 * px) && (Y > oy + 30 * px) && (Y <= oy + 30 * px) ||
     (X > ox + 8 * px) && (X <= ox + 31 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 36 * px) && (X <= ox + 59 * px) && (Y > oy + 31 * px) && (Y <= oy + 31 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 32 * px) && (Y <= oy + 32 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 33 * px) && (Y <= oy + 33 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 34 * px) && (Y <= oy + 34 * px) ||
     (X > ox + 4 * px) && (X <= ox + 59 * px) && (Y > oy + 35 * px) && (Y <= oy + 35 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 36 * px) && (Y <= oy + 36 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 37 * px) && (Y <= oy + 37 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 38 * px) && (Y <= oy + 38 * px) ||
     (X > ox + 28 * px) && (X <= ox + 63 * px) && (Y > oy + 39 * px) && (Y <= oy + 39 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 40 * px) && (Y <= oy + 40 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 41 * px) && (Y <= oy + 41 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 42 * px) && (Y <= oy + 42 * px) ||
     (X > ox + 32 * px) && (X <= ox + 87 * px) && (Y > oy + 43 * px) && (Y <= oy + 43 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 44 * px) && (Y <= oy + 44 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 45 * px) && (Y <= oy + 45 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 46 * px) && (Y <= oy + 46 * px) ||
     (X > ox + 36 * px) && (X <= ox + 75 * px) && (Y > oy + 47 * px) && (Y <= oy + 47 * px) ||
     (X > ox + 40 * px) && (X <= ox + 83 * px) && (Y > oy + 48 * px) && (Y <= oy + 48 * px) ||
     (X > ox + 40 * px) && (X <= ox + 83 * px) && (Y > oy + 49 * px) && (Y <= oy + 49 * px) ||
     (X > ox + 40 * px) && (X <= ox + 83 * px) && (Y > oy + 50 * px) && (Y <= oy + 50 * px) ||
     (X > ox + 40 * px) && (X <= ox + 83 * px) && (Y > oy + 51 * px) && (Y <= oy + 51 * px) ||
     (X > ox + 44 * px) && (X <= ox + 71 * px) && (Y > oy + 52 * px) && (Y <= oy + 52 * px) ||
     (X > ox + 44 * px) && (X <= ox + 71 * px) && (Y > oy + 53 * px) && (Y <= oy + 53 * px) ||
     (X > ox + 44 * px) && (X <= ox + 71 * px) && (Y > oy + 54 * px) && (Y <= oy + 54 * px) ||
     (X > ox + 44 * px) && (X <= ox + 71 * px) && (Y > oy + 55 * px) && (Y <= oy + 55 * px);
	// Total 136 lines.

assign inWhite_BirdUp = inHitBox_BirdUp & ~inBlank_BirdUp & ~inGrey_BirdUp;

// End of Auto Generate: Bird/BirdUp


case(select) begin
3'b/*SEL*/ : begin
	assign inHitBox = inHitBox_BirdDown;
	assign inWhite = inWhite_BirdDown;
	assign inGrey = inGrey_BirdDown;
end

3'b/*SEL*/ : begin
	assign inHitBox = inHitBox_BirdUp;
	assign inWhite = inWhite_BirdUp;
	assign inGrey = inGrey_BirdUp;
end


endcase

/* Enter Selector Code here */



endmodule // end of Bird
