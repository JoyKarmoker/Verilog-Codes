module fourbitaddersubstractor(S, Cout, A, B, Mode);
	output[3:0] S;
	output Cout;
	input[3:0] A, B;
	input Mode;

	xor xo(IB0, B[0], Mode);
	xor x1(IB1, B[1], Mode);
	xor x2(IB2, B[2], Mode);
	xor x3(IB3, B[3], Mode);
	
	fulladder fa0(S[0], C0, A[0], IB0, Mode);
	fulladder fa1(S[1], C1, A[1], IB1, C0);
	fulladder fa2(S[2], C2, A[2], IB2, C1);
	fulladder fa3(S[3], Cout, A[3], IB3, C2);
endmodule
