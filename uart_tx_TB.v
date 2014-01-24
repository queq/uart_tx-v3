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
			#1450 enable = 1;
			data_o_bus = 'h48; //0100 1000 - H
			#50 enable = 0;
			#1099950 enable = 1;
			data_o_bus = 'h6F; //0110 1111 - o
			#50 enable = 0;
			#1099950 enable = 1;
			data_o_bus = 'h6C; //0110 1100 - l
			#50 enable = 0;
			#1099950 enable = 1;
			data_o_bus = 'h61; //0110 0001 - a
			#50 enable = 0;
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
		#4000000 $finish;
	end  
endmodule