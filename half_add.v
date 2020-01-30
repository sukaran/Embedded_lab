module half_add(S,C,x,y);
output S,C;
input x,y;
assign S = (x+y)*(~x + ~y);
assign C = x*y;
endmodule

module simand;
reg x,y;
wire S,C;

half_add h(S,C,x,y);

initial begin
$monitor("x=%d,y=%d,S=%d,C=%d",x,y,S,C);

x=1'b0;
y=1'b0;
#10
x = 1'b0;
y=1'b1;
#10
x = 1'b1;
y=1'b0;
#10
x = 1'b1;
y=1'b1;
end

endmodule

