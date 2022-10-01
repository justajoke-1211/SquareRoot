module mux2to1_8B (S,A,B,O);
	input S;
	input [7:0] A,B;
	output [7:0] O;
	mux2to1_4B Bit1(.S(S), .A(A[7:4]),.B(B[7:4]),.O(O[7:4]));
	mux2to1_4B Bit2(.S(S), .A(A[3:0]),.B(B[3:0]),.O(O[3:0]));
endmodule
