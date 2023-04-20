module IR (clk,rst,load,inst_in, inst_out);
	input clk, rst,load;
	input [7:0] inst_in;
	output reg[7:0] inst_out;
	
	always @ (posedge clk)
		if(rst) 
			inst_out<= 0;
		else if (load) 
			inst_out <= inst_in;
		else 
			inst_out <= inst_out;
		
endmodule 
/*
module IR (clk,rst,load,shift, data, Q);
	parameter N=16;
	input clk, rst,load,shift;
	input [7:0] data;
	output [N-1:0] Q;
	reg [N-1:0] Q;
	
	always @ (posedge rst or posedge clk)
		if(rst) Q<= 0;
		else if (load) {Q[7],Q[6],Q[5],Q[4],Q[3],Q[2],Q[1],Q[0]} <=data;
		else if (shift)Q <= Q<<8;
		else Q <= Q;
		
endmodule
*/