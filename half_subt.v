module half_subt(D,B,x,y);
output D,B;
input x,y;
assign D = (~x&y | x&~y);
assign B = (~x)&y;
endmodule

module simand;
reg x,y;
wire D,B;

half_subt h(D,B,x,y);

initial begin
$monitor("x=%d,y=%d,D=%d,B=%d",x,y,D,B);

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

