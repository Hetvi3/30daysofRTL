// 4 bit Comparator 

module day11(
input [3:1] a, b,
output reg a_grt_b, a_less_b, equal);

	always @(*)begin
	 a_grt_b=1'b0;
	 a_less_b=1'b0; 
	 equal=1'b0;
	 
		if (a>b) a_grt_b=1'b1;
		else if(a<b)  a_less_b=1'b1;
		else equal=1;

	end
endmodule
