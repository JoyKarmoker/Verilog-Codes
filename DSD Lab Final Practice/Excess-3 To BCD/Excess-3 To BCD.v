module ExcessToBCD(A, D);
	output[3:0] A;
	input[3:0] D;
	
	not n0(A[0], D[0]);
	xor x0(A[1], D[0], D[1]);
	
	and a0(a, D[0], D[1]);
	xnor(A[2], D[2], a);

	and a1(b, D[0], D[1]);
	or or0(c, b, D[2]);
	and(A[3], c, D[3]);
endmodule
