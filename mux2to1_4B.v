module mux2to1_4B (S,A,B,O);
	input S;
	input [3:0] A,B;
	output [3:0] O;
	mux2to1_2B Bit1(.S(S), .A(A[3:2]),.B(B[3:2]),.O(O[3:2]));
	mux2to1_2B Bit2(.S(S), .A(A[1:0]),.B(B[1:0]),.O(O[1:0]));
endmodule
