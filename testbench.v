`timescale 10ps/10ps
module testbench();
	reg [15:0]A,B,C,D,E,F;
	reg [2:0]S;
	wire [15:0] out;
	mux6to1_16B test(.S(S),.A(A[15:0]),.B(B[15:0]),.C(C[15:0]),.D(D[15:0]),.E(E[15:0]),.F(F[15:0]),.O(out[15:0]));
	initial begin 
		A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD;E=16'hDE;F=16'hEF; S=3'b000;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD; E=16'hDE;F=16'hEF;S=3'b001;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD;E=16'hDE;F=16'hEF; S=3'b010;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD; E=16'hDE;F=16'hEF;S=3'b011;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD; E=16'hDE;F=16'hEF;S=3'b100;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD; E=16'hDE;F=16'hEF;S=3'b101;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD;E=16'hDE;F=16'hEF; S=3'b110;
		#100 A=16'h00; B=16'hAB;C=16'hBC;D=16'hCD;E=16'hDE;F=16'hEF; S=3'b111;
	end
endmodule
