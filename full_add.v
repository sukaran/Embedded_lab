module half_add(S,C,x,y,z);
output S,C;
input x,y,z;
assign S = (~x & ~y & z) | (~x & y & ~z) | (x & ~y & ~z) | (x & y & z) ;
assign C = x&y | y&z | z&x;
endmodule

module simand;
reg x,y,z;
wire S,C;

half_add h(S,C,x,y,z);

initial begin
$monitor("x=%d,y=%d,z=%d,S=%d,C=%d",x,y,z,S,C);

x=1'b0;
y=1'b0;
z=1'b0;
#10
x = 1'b0;
y=1'b0;
z=1'b1;
#10
x = 1'b0;
y=1'b1;
z=1'b0;
#10
x = 1'b0;
y=1'b1;
z=1'b1;
#10
x = 1'b1;
y=1'b0;
z=1'b0;
#10
x = 1'b1;
y=1'b0;
z=1'b1;
#10
x = 1'b1;
y=1'b1;
z=1'b0;
#10
x = 1'b1;
y=1'b1;
z=1'b1;
end

endmodule

