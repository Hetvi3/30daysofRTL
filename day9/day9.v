// 8:3 Binary Encoder 

module day9(
input [7:0] d,
output [2:0] y
);

assign y[0]= d[4]| d[5] | d[6] | d[7] ;
assign y[1]= d[2]| d[3] | d[6] | d[7] ;
assign y[2]= d[1]| d[3] | d[5] | d[7] ;

endmodule

//8:3 Priority Encoder
module enc(
input [7:0] d,
output reg [2:0] y
);

	always @(*)
		begin 
			case (d)
				8'b1xxxxxxx: y=3'b111;
				8'b01xxxxxx: y=3'b100;
				8'b001xxxxx: y=3'b101;
				8'b0001xxxx: y=3'b110;
				8'b00001xxx: y=3'b011;
				8'b000001xx: y=3'b010;
				8'b0000001x: y=3'b001;
				8'b00000001: y=3'b000;
				
				
			endcase
			
			end

endmodule
