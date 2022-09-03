module fulladder(S, Cout, A, B, Cin);
	output S, Cout;
	input A, B, Cin;
	
	halfadder ha1(S1, C1, A, B);
	halfadder ha2(S, C2, S1, Cin);
	or o1(Cout, C1, C2);
endmodule
