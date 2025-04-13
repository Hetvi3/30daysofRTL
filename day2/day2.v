//half adder and full adder


module day2(input a , b , cin, output cout, sum);

	assign sum= a^b&^cin;
	assign cout=a&b | b&cin | cin& a;
	
endmodule 

//fulladder using two half adders
module fulladder(input a , b ,cin , output sum , cout);

wire s1, cout1, cout2;

halfadder h1(a,b,sum1, cout1);
halfadder h2(cin, sum,cout2) ;

assign cout=cout1|cout2;

endmodule



module halfadder(input x ,y , output sum, cout);
 
 assign {sum,cout} = {x^y, x&y};
 
 endmodule
 
 
 
