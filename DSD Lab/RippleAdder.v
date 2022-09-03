module rippleadder(S, Cout, A, B, Cin);
	output[3:0]S;
	output Cout;
	wire[3:0]C;
	input[3:0]A,B;
	input Cin;
	
	fulladder f0(S[0], C[0], A[0], B[0], Cin); 
	fulladder f1(S[1], C[1], A[1], B[1], C[0]); 
	fulladder f2(S[2], C[2], A[2], B[2], C[1]);
	fulladder f3(S[3], Cout, A[3], B[3], C[2]);
endmodule
