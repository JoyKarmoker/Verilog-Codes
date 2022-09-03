module JKFF(Q, Qbar, J, K, Clk);
	output reg Q, Qbar;
	input J, K, Clk;
	always @ (posedge Clk)
	begin
		case({J,K})
			2'b00: Q = Q;
			2'b01: Q = 1'b 0;
			2'b10: Q = 1'b 1;
			2'b11: Q = ~Q;
		endcase
		Qbar = ~Q;
	end
endmodule
