module mux4to1_16B(S,A,B,C,D,O);
	input [1:0]S;
	input [15:0] A,B,C,D;
	wire [15:0] O1,O2;
	output [15:0]O;
	mux2to1_16B Mux1(.S(S[0]), .A(A[15:0]),.B(B[15:0]),.O(O1[15:0]));
	mux2to1_16B Mux2(.S(S[0]), .A(C[15:0]),.B(D[15:0]),.O(O2[15:0]));
	mux2to1_16B Mux12(.S(S[1]), .A(O1[15:0]),.B(O2[15:0]),.O(O[15:0]));
endmodule
