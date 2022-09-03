module three_bit_sync_up_down_counter(Q,qbar,M,clk,clear);

output [3:0]Q,qbar;
input clk,clear,M;

tff tff1(Q[0],qbar[0],1'b1,clk,clear);

not nt1(m_not,M);
and and1(m_not_qa,m_not,Q[0]);
and and2(m_qa_not,M,qbar[0]);
or or1(tb,m_not_qa,m_qa_not);

tff tff2(Q[1],qbar[1],tb,clk,clear);

and and3(m_not_qa_qb,m_not_qa,Q[1]);
and and4(m_qa_not_qb_not,m_qa_not,qbar[1]);
or or2(tc,m_not_qa_qb,m_qa_not_qb_not);

tff tff3(Q[2],qbar[2],tc,clk,clear);

endmodule
