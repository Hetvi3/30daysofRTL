//synchronous d-flipfop
module day15(
input d,
input clk, reset,
output reg q,
output q_bar
);

always @(posedge clk or negedge reset)
begin
if(!reset) q<=0;
else
	begin
	q<=d;
	end
	end
	
	assign q_bar=~q;
	
endmodule

//synchronous d-flipfop
module dff(
input d,
input clk, reset,
output reg q,
output q_bar
);

always @(posedge clk)
begin
if(!reset) q<=0;
else
	begin
	q<=d;
	end
	end
	
	assign q_bar=~q;
	
endmodule
