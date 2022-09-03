module mod10Counter(Q, CLK, CLR);
	output[3:0] Q;
	input CLK, CLR;
	wire[3:0] Qbar;
	assign J = 1'b 1;
	assign K = 1'b 1;
	
	nand no(CLR, Q[3], Q[1]);
	JKFF jkff0(Q[0], Qbar[0], J, K, CLK, CLR);
	JKFF jkff1(Q[1], Qbar[1], J, K, Q[0], CLR);
	JKFF jkff2(Q[2], Qbar[2], J, K, Q[1], CLR);
	JKFF jkff3(Q[3], Qbar[3], J, K, Q[2], CLR);
	
endmodule
