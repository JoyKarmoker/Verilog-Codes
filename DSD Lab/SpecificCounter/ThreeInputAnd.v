module threeinputand(out, in1, in2, in3);
output out;
input in1, in2, in3;
	and a0(tmp, in1, in2);
	and a1(out, in3, tmp);
endmodule
