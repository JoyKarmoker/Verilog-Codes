module halfadder(S, Cout, A, B);

	output S, Cout; 
	input A, B;

	xor xo(S, A, B);
	and a0(Cout, A, B);
	

endmodule
