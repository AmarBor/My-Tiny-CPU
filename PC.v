module PC(clk, rst, inc, out);
input clk;
input rst;
input inc; // increament
output reg [3:0] out;

	always @ (posedge clk) 
	begin
		if (rst)
			out <= 0;
		else if (inc)
			out <= out + 1; // increament increase +1
		else 
			out <= out;
	end
endmodule	
