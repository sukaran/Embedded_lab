module my_and(c,d,e,f,a,b);
output c,d,e,f;
input a,b;
assign c=a&b;
assign d=a|b;
assign e=a~|b;
assign f=a~&b;
endmodule

module simand;
reg a,b;
wire c,d,e,f;

my_and  m(c,d,e,f,a,b);

initial begin 
$monitor("a=%d,b=%d,c=%d,d=%d,e=%d,f=%d",a,b,c,d,e,f);


a = 1'b0;
b=1'b0;
#10
a = 1'b0;
b=1'b1;
#10
a = 1'b1;
b=1'b0;
#10
a = 1'b1;
b=1'b1;
end

endmodule

