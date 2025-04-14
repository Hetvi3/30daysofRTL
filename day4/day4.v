//Ripple - Carry Adder
module  day4 #(parameter SIZE=4)(
input [SIZE-1:0]a, b ,
input cin , 
output [SIZE-1:0]sum , cout);

genvar i;
	add1 a0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(cout[0]));
	
generate
	for(i=1; i<SIZE; i=i+1) 
		begin : gen_Add
			add1 h0 (.a(a[i]), .b(b[i]), .cin(cout[i-1]), .sum(sum[i]), .cout(cout[i]));

		end

		endgenerate
endmodule

module add1(input a , b , cin , output sum, cout);

assign sum= a^b^cin ;
assign cout= a&b| b&cin | cin&a;

endmodule

