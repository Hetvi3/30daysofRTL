//Positive edge-triggered and asynchronous active low reset D flip flop

module day1(
input d, clk , reset,
output reg q
);

always @(posedge clk or negedge reset)
begin
	if(~reset)
		q<=0;
		
	else
		q<=d;
		
		end
endmodule
		
	
