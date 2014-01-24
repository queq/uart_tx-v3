module dataSend
	#(
		parameter BITS = 8
	)
	(
		input wire clk, rst, enable,
		input wire [12:0] q,
		input wire [7:0] data_o_bus,
		output reg isDone,
		output wire bit_out
	);

	localparam [1:0]
		IDLE  = 2'b00,
		START = 2'b01,
		DATA  = 2'b10,
		STOP  = 2'b11;

	reg [1:0] state_reg, state_next;
	reg [2:0] bits_reg, bits_next;
	reg [7:0] data_reg, data_next;
	reg tx_reg, tx_next, load_reg;

	always @(posedge clk, posedge rst)
		if (rst)
			begin
				state_reg <= IDLE;
				bits_reg <= 3'b0;
				data_reg <= 7'b0;
				tx_reg <= 1'b1;
			end
		else
			begin
				state_reg <= state_next;
				bits_reg <= bits_next;
				data_reg <= data_next;
				tx_reg <= tx_next;
			end

	always @(*)
		begin
			isDone = 1'b0;
			state_next = state_reg;
			bits_next = bits_reg;
			data_next = data_reg;
			tx_next = tx_reg;

			case (state_reg)
				
				IDLE:
					begin
						tx_next = 1'b1;
						if (enable)
							begin
								if (q == 13'b0)
									begin
										state_next = START;
										data_next = data_o_bus;
									end
							end			
					end
				
				START:
					begin
						tx_next = 1'b0;
						if (q == 13'b0)
							begin
								state_next = DATA;
								bits_next = 0;
							end
					end
				
				DATA:
					begin
						tx_next = data_reg[0];
						if (q == 13'b0)
							begin
								data_next = data_reg >> 1;
								if (bits_reg == (BITS - 1))
									state_next = STOP;
								else
									bits_next = bits_reg + 1'b1;
							end
					end

				STOP:
					begin
						tx_next = 1'b1;
						isDone = 1'b1;
						if (q == 13'b0) if (~enable) state_next = IDLE;								
					end
		endcase
	end

	assign bit_out = tx_reg;

endmodule