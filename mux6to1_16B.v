module mux6to1_16B (S, A,B,C,D,E,F, O);
	input [15:0] A,B,C,D,E,F;
	input [2:0] S;
	output [15:0] O;
	wire[15:0] O1,O2;
	mux4to1_16B mux1(.S(S[1:0]),.A(A[15:0]),.B(B[15:0]),.C(C[15:0]),.D(D[15:0]),.O(O1[15:0]));
	mux4to1_16B mux2(.S(S[1:0]),.A(E[15:0]),.B(F[15:0]),.C(16'h0000),.D(16'h0000),.O(O2[15:0]));
	mux2to1_16B mux12(.S(S[2]),.A(O1[15:0]),.B(O2[15:0]),.O(O[15:0]));
endmodule
