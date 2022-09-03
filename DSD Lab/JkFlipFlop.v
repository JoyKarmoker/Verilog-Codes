module JKFlipFlop(Q, Qbar, J, K, Clk, Clr);
	output Q, Qbar;
	input J, K, Clr, Clk;
	
	nand n01(a, Qbar, J, Clk, Clr);
	nand n02(b, Clk, K, Q);
	nand n11(y, a, ybar);
	nand n12(ybar, y, Clr, b);
	not n0(cbar, Clk);
	nand n21(c, y, cbar);
	nand n22(d, cbar, ybar);
	nand n31(Q, c, Qbar);
	nand n32(Qbar, Q, Clr, d);

endmodule
