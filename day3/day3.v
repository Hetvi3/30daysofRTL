//half subtractor and full subtractor

module day3(input a , b , bin, output borrow , diff);

assign {diff, borrow} = {a^b^bin, ~(a^b) & bin};

endmodule


module halfsub (input a , b , output borrow , diff);

assign {diff, borrow }= {a^b , ~a&b };

endmodule 
