//Dmux

//1:4 DMUX using 1:2 dmux
module dmux14(
input y,sel0,sel1,
output i0, i1, i2,i3
);

wire z1, z2;
day8 d1(y,sel0,z1,z2);
day8 d2(z1,sel1,y0,y1);
day8 d3(z2,sel1,y2,y3);

endmodule


//1:2 DMUx
module day8(
input y , 
input sel,
output i0,i1);

assign {i0, i1} = sel ? {1'b0, y} : {y, 1'b0};

endmodule

//1:4 DMUX
module dmux1_4(
input y , 
input [1:0]sel,
output reg i0,i1, i2, i3);

always @(*)
	begin 
	case(sel)
		2'b00:{i0,i1, i2, i3}={y,3'b0};
		2'b01:{i0,i1, i2, i3}={1'b0,y,2'b0};
		2'b10:{i0,i1, i2, i3}={2'b0, y,1'b0};
		2'b11:{i0,i1, i2, i3}={3'b0,y};
		endcase
	end
	
endmodule
