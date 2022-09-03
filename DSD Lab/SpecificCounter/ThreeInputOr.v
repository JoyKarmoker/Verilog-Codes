module threeinputor(out, in1, in2, in3);
output out;
input in1, in2, in3;
	or or0(tmp, in1, in2);
	or or1(out, in3, tmp);
endmodule
