module MBR (clk,rst,load, data, Q);
	parameter N=8;
	input clk, rst,load;
	input [N-1:0] data;
	output [N-1:0] Q;
	reg [N-1:0] Q;
	
	always @ (negedge rst or posedge clk)
		if(!rst) Q<= 0;
		else if (load) Q <=data;
		else Q <= Q;
		
endmodule //memory_buffer_register