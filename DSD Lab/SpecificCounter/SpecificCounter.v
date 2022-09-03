module specificcounter(Q, Qbar, CLK, CLR);
	output [2:0]Q, Qbar;
	input CLK, CLR;
	
	and tia0(a, Q[0], Qbar[0], Qbar[2]);
	and tia1(b, Qbar[0], Q[1], Qbar[2]);
	and tia2(c, Q[0], Q[1], Q[2]);
	or tio0(ta, a, b, c);
	tff t0(Q[0], Qbar[0], ta, CLK, CLR);

	and a0(d, Q[0], Q[2]);
	and a1(e, Q[1], Q[2]);
	and a2(f, Q[0], Q[1]);
	and tia3(g, Qbar[0], Qbar[1], Qbar[2]);
	or fio0(tb, d, e, f, g);
	tff t1(Q[1], Qbar[1], tb, CLK, CLR);

	and a3(h, Q[2], Q[1]);
	and a4(i, Q[2], Qbar[0]);
	and a5(j, Q[0], Q[1]);
	or tio2(tc, h, i, j);
	tff t2(Q[2], Qbar[2], tc, CLK, CLR);
endmodule
