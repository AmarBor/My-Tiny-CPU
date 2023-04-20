module mux2ch (
	input [7:0] in_a, in_b,
	input sel_mux, 
	output [7:0] mux_out
);
	
assign mux_out = (sel_mux == 0) ? in_a : in_b;
	
endmodule