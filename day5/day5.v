//

module day5 #(parameter SIZE=4)(
input [SIZE-1:0]a,b,
input ctrl,
output [SIZE-1:0] sum,cout);

 wire [SIZE-1:0] b_not;

genvar i;
assign b_not=b^{SIZE{ctrl}};

full_adder a0(a[0], b_not[0], ctrl, sum[0], cout[0]);

generate 
	for(i=1; i<SIZE ; i=i+1) 
		begin : adder_sub 
		
			full_adder a1(a[i], b_not[i], cout[i-1], sum[i], cout[i]);
 
		end
endgenerate
endmodule

module full_adder(
  input a, b, cin,
  output sum, cout
);
  
  assign {sum, cout} = {a^b^cin, ((a & b) | (b & cin) | (a & cin))};
endmodule

