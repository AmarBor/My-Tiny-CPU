/*module reg4bit (input [3:0] D, input clk, output reg [3:0] Q);

always @(posedge clk)
Q <= D;

endmodule */

module reg4bit (clk,rst,load, data, Q);
	parameter N=8;
	input clk, rst,load;
	input [N-1:0] data;
	output [N-1:0] Q;
	reg [N-1:0] Q;
	
	always @ (posedge rst or posedge clk)
		if(rst) Q<= 0;
		else if (load) Q <=data;
		else Q <= Q;
		
endmodule //memory_address_register