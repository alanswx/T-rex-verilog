module GameDelegate(
		    input wire clk,
		    input wire rst,
        input wire collided,
		    output wire [1:0] gameState);
   
  reg [1:0] state;

  localparam InitState = 2'b00;
  localparam InGameState = 2'b01;
  //localparam PrepareState = 2'b10;
  localparam DeadState = 2'b10;
  
  always @(posedge clk) begin
  	if (rst) begin
  	  state <= InitState;
  	end

    else if (collided) begin
      state <= DeadState;
    end

    

  end

  assign gameState = state;

endmodule // gameDelegate
