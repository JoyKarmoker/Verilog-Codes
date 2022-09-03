module fourinputor(out, in1, in2, in3, in4);
output out;
input in1, in2, in3, in4;
	or or0(tmp0, in1, in2);
	or or1(tmp1, in3, tmp0);
	or or2(out, tmp1, in4);
endmodule
