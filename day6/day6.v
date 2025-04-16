//Binary to Gray conversion

module day6(
input [3:0]bi,
output [3:0] gray);

assign gray[3]=bi[3];
assign gray[2]=bi[3]^bi[2];
assign gray[1]=bi[2]^bi[1];
assign gray[0]=bi[1]^bi[0];

endmodule


//Gay to Binary conversion

module g2b #(parameter SIZE =4) (
input [SIZE-1:0] gray,
output [SIZE-1:0] bi
);

genvar i;

	generate
		for (i=0; i<SIZE; i=i+1)
			begin : welcome
				assign bi[i]=^(gray>>i);
			end
	endgenerate

endmodule

/*input [3:0]gray,
output [3:0] bi);

assign bi[3]=gray[3];
assign bi[2]=gray[3]^gray[2];
assign bi[1]=bi[2]^gray[1];
assign bi[0]=bi[1]^gray[0];

endmodule
*/

module b2g #(parameter SIZE =4) (
input [SIZE-1:0] bi,
output [SIZE-1:0] gray
);

genvar i;

assign gray[SIZE-1]=bi[SIZE-i];

	generate
		for (i=1; i<SIZE; i=i+1)
			begin : hello
				assign gray[i]=bi[i]^bi[i-0];
			end
	endgenerate

endmodule

