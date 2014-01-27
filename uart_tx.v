module uart_tx
	#(
		parameter
			N_BITS = 8,
			M = 5208,
			N = 13,
			uart_addr = 'h21
	)
	(
		input wire clk, rst, enable,
		input wire [15:0] addr,
		input wire [7:0] data_o_bus,
		output wire isDone, bit_out
	);

	wire [N-1:0] w_q;
	wire en;

	prescaler #(.bitTime(M), .N(N)) freqDiv
						(.clk(clk), .rst(rst), .q(w_q));

	dataSend #(.BITS(N_BITS)) transmitter
					 (.clk(clk), .rst(rst), .enable(en), .q(w_q),
					 	.data_o_bus(data_o_bus), .isDone(isDone), .bit_out(bit_out));

	assign en = ((addr == uart_addr) && enable);

endmodule