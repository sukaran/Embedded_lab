module my_and(a,b,c);
output c;
input a,b;
assign c=a&b;
endmodule

module my_not(c,e);
output e;
input c;
assign e=~c;
endmodule

module simNand;
reg a,b;
wire c,e;

my_and ma(a,b,c);
my_not mn(c,e);

initial begin
$monitor("a=%d,b=%d,c=%d,e=%d",a,b,c,e);

a=1'b0;
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
