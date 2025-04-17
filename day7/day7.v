//2:1 MUX

module day7(
input a, b,
input sel,
output y);

assign y=sel?b:a;

endmodule

//4:1 MUX
module mux4_1(
input a,b,c,d,
input [1:0] sel,
output reg y);

always @(*)
	begin
		case(sel)
		2'b00:y=a;
		2'b01:y=b;
		2'b10:y=c;
		2'b11:y=d;
		endcase
	end
	
endmodule
		
//4:1 MUX from 2:1 MUX
module mux(
input a, b, c, d,
input [1:0] sel,
output y);

wire y0, y1, y2;

day7 mux1(a,b, sel[1], y0);
day7 mux2(c,d, sel[1], y1);
day7 mux3(y0,y1, sel[0], y2);

assign y= y2;

endmodule

//3:1 MUX using 2:1 MUX
module mux3_1(
input a,b,c,
input [1:0] sel,
output y);

assign y0=sel[1]? b:a;
assign y=sel[0] ? y0:c;

endmodule

