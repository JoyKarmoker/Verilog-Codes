module tff(q,qbar,t,clk,clear);

output reg q,qbar;
input t,clk,clear;

always @ (posedge clk)

if(clear==1'b0)
begin
	q<=1'b0;
	qbar<=1'b1;
end
else if(t == 1'b0)
begin
	q<=q;
	qbar<=qbar;
end
else 
begin
	q<=qbar;
	qbar<=q;
end

//nand(a,qbar,t,clk);
//nand(b,q,t,clk);
//nand(q,a,qbar);
//nand(qbar,b,q);

endmodule
