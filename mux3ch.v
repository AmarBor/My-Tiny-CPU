module mux3ch (
	input [7:0] in_a, in_b, in_c,
	input [1:0] sel_mux, 
	output [7:0] mux_out
);
	
assign mux_out = (sel_mux == 2'b00) ? in_a : (sel_mux == 2'b01) ? in_b : (sel_mux == 2'b10) ? in_c : 0 ;
	
endmodule