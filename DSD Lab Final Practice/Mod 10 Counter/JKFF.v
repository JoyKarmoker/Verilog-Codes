module JKFF(Q, Qbar, J, K, CLK, CLR);
	output Q, Qbar;
	input J, K, CLK, CLR;
	
	nand n11(a, Qbar, J, CLK, CLR);
	nand n12(b, CLK, K, Q);
	
	nand n21(y, a, ybar);
	nand n22(ybar, y, CLR, b);
	
	not n0(cbar, CLK);
	nand n31(c, y, cbar);
	nand n32(d, cbar, ybar);

	nand n41(Q, c, Qbar);
	nand n42(Qbar, Q, CLR, d);
endmodule
