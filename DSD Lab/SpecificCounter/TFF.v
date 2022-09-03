module tff(Q, Qbar, T, CLK, CLR);
input T, CLK, CLR;
output reg Q, Qbar;

	always @(posedge CLK)
	begin

		if(CLR == 1'b 0)
			Q = 1'b 0;
		else
		begin
			if(T == 1'b 1)
				Q = ~Q;
			else
				Q = Q;
		end
	Qbar = ~Q;
	end
endmodule
