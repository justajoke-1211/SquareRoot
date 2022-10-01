module mux2to1_16B(S, A,B, O);
	input S;
	input [15:0] A,B;
	output [15:0] O;
	mux2to1_8B Bit1(.S(S), .A(A[15:8]),.B(B[15:8]),.O(O[15:8]));
	mux2to1_8B Bit2(.S(S), .A(A[7:0]),.B(B[7:0]),.O(O[7:0]));
endmodule
