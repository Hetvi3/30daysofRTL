//Dmux

//1:2 DMUx

module day8(
input y , sel,
output i0,i1);

assign {i0, i1} : sel ? {1'b0, i} : {i, 1'b0};

endmodule

//1:4 DMUX
module day8(
input y , 
input [1:0]sel,
output reg i0,i1, i2, i3);

always @(*)
	begin 
	case(sel)
		2'b00:{i0,i1, i2, i3}={i,3'b0};
		2'b01:{i0,i1, i2, i3}={,1'b0,i,2'b0};
		2'b10:{i0,i1, i2, i3}={2'b0, i,1'b0};
		2'b11:{i0,i1, i2, i3}={3'b0,i};
		endcase
	end
	

endmodule
