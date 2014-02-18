module uart_tx
	#(
		parameter
			N_BITS = 8,
			M = 10417,
			N = 14
			//,uart_addr = 'h21
	)
	(
		input wire clk, rst, enable,
		//input wire [15:0] addr,
		input wire [7:0] data_i,
		output wire done, tx
	);

	wire [N-1:0] w_q;
	//wire en;

	prescaler #(.bitTime(M), .N(N)) freqDiv
						(.clk(clk), .rst(rst), .q(w_q));

	dataSend #(.BITS(N_BITS)) transmitter
					 (.clk(clk), .rst(~rst), .enable(enable), .q(w_q),
					 	.data_i(data_i), .done(done), .tx(tx));

	//assign en = ((addr == uart_addr) && enable);

endmodule