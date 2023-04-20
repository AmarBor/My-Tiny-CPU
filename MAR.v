module MAR( clk, rst, load_addr,addr_in, addr_out);
input clk, rst, load_addr;
input [3:0] addr_in;
output reg [3:0] addr_out;

always @(posedge clk)
	if (rst)
		addr_out <=0;
		
	else if (load_addr)
		addr_out <= addr_in;
	
	else 
		addr_out <= addr_out;
		
endmodule 