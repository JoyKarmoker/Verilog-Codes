module fulladder(S, Cout, A, B, Cin);
	output S, Cout;
	input A, B, Cin;
	wire S1, C1, C2;
	halfadder h0(S1, C1, A, B);	
	halfadder h1(S, C2, S1, Cin);
	or o0(Cout, C1, C2);

endmodule
