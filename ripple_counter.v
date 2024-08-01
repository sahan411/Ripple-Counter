module ripple_counter(input RESET, CLK, UP_DOWN, output reg [2:0] COUNT);

	always @(negedge CLK or posedge CLK) begin 
		if(RESET)
			COUNT <= 3'b000;
			
		else begin
			if(UP_DOWN)
				COUNT <= COUNT+1;
			else
				COUNT <= COUNT-1;
		end
	end

endmodule
			
	