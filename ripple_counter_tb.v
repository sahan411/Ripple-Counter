module ripple_counter_tb();
	reg reset, clk, up_down;
	wire [2:0] count;
	
	ripple_counter uut(.RESET(reset), .CLK(clk), .UP_DOWN(up_down), .COUNT(count));
	
	always #5 clk= !clk;
	
	initial begin 
		$dumpfile("ripple_counter.vcd");
		$dumpvars;
		clk = 0;
		reset = 1;
		up_down = 1;
		#10 reset = 0;
		#50 up_down = 0;
		#60 $finish;
	end
	
endmodule
		