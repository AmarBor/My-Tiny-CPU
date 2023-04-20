module mux4ch (
	input [7:0] in_a, in_b, in_c, in_d,
	input [2:0] sel_mux, 
	output [7:0] mux_out
);
	
assign mux_out = (sel_mux == 2'b00) ? in_a : (sel_mux == 2'b01) ? in_b : (sel_mux == 2'b10) ? in_c : in_d ;
	
endmodule