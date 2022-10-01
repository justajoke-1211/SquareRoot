module mux2to1_2B (S, A,B,O);
	input S;
	input [1:0] A,B;
	output [1:0] O;
	mux2to1 Bit1(.S(S), .A(A[1]),.B(B[1]),.O(O[1]));
	mux2to1 Bit2(.S(S), .A(A[0]),.B(B[0]),.O(O[0]));
endmodule
