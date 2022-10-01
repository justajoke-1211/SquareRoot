module mux2to1 (S, A,B,O);
	input S,A,B	;
	output O;
	wire S_not, and_1, and_2, or_2;
	not Snot(S_not,S);
	and and1(and_1, S_not, A);
	and and2(and_2, S,B);
	or or_out(O, and_1,and_2);
endmodule



