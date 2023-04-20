module rom4bit (clk,read, addr, data);
input clk,read;
input [1:0] addr;
output reg [3:0] data;

always @( posedge clk)
if(read)
begin

case (addr)

2'b00: data <= 4'b1001;
2'b01: data <= 4'b1010;
2'b10: data <= 4'b0011;
2'b11: data <= 4'b1100;
endcase
end

else
data <= 4'bz;
endmodule
