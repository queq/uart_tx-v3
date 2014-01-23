`timescale 1ns / 1ps

module uart_tx_TB;
	reg clk, rst, enable;
	reg [7:0] data_o_bus;
	wire isDone, bit_out;

	uart_tx uut (.clk(clk), .rst(rst), .enable(enable),
							 .data_o_bus(data_o_bus), .isDone(isDone), .bit_out(bit_out));

	initial
		begin
			clk = 0;
			rst = 1;
			enable = 0;
			data_o_bus = 8'b0;
			#50 rst = 0;
			#1350 enable = 1;
			data_o_bus = 'd52; //0011 0100
			#20000 enable = 0;
			data_o_bus = 'd103; //0110 0111
			#20000 enable = 1;
			#20000 enable = 0;
		end

	initial
		begin
			forever
				begin
					clk = 0;
					#10 clk = 1;
					#10;
				end
		end
	
	initial begin: TEST_CASE
		$dumpfile("uart_tx_TB.vcd");
		$dumpvars(-1, uut);
		#3000000 $finish;
	end  
endmodule