module half_add(S,C,x,y);
output S,C;
input x,y;
assign S = (x|y)&(~x | ~y);
assign C = x&y;
endmodule

module final(A,B,C,CC);
output A,CC;
input B,C;
assign CC = B|C; 
endmodule

module simand;
reg x,y,z;
wire S,C,A,B,CC;

half_add h(S,C,x,y);
half_add h2(A,B,S,z);
final fin(A,B,C,CC);
initial begin
$monitor("x=%d,y=%d,z=%d,A=%d,CC=%d",x,y,z,A,CC);


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

