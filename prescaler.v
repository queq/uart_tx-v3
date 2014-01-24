module prescaler
	#(
		parameter bitTime = 5208,
							N = 13
	)
	(
		input clk, rst,
		/*output wire tick,*/ 
		output wire [N-1:0] q
	);
	
	reg [N-1:0] bitCount;
	//reg tick_reg;

	always @(posedge clk)
		begin
			if (rst)
				//begin
					bitCount = bitTime;
					//tick_reg = 0;
				//end
			else
				begin
					if (bitCount == 13'b0) 
						//begin
							//tick_reg = ~tick_reg;
							bitCount = bitTime;
						//end
					else bitCount = bitCount - 1'b1; 
				end
		end

	/*assign tick = tick_reg;*/
	assign q = bitCount;

endmodule