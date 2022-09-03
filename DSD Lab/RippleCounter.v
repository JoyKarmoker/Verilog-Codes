module ripplecounter(Q, CLK, CLR);
	output[3:0] Q;
	input CLK, CLR;
	wire[3:0]Qbar;
	assign J = 1;
	assign K = 1;
	
	nand(CLR, Q[3], Q[1]);	

	JKFlipFlop f0(Q[0], Qbar[0], J, K, CLR, CLK);
	JKFlipFlop f1(Q[1], Qbar[1], J, K, CLR, Q[0]);
	JKFlipFlop f2(Q[2], Qbar[2], J, K, CLR, Q[1]);
	JKFlipFlop f3(Q[3], Qbar[3], J, K, CLR, Q[2]);
endmodule
