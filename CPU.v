module CPU(clk,rst,in_inst, in_data,read_rom,read_ram, write_ram, addr_rom, addr_ram, out_ACC);
input clk,rst;

input [7:0] in_inst; // rom out
input [7:0] in_data;//ram out
//inout [7:0] data_cpu;
//output[7:0] add_cpu,A,B;
output read_rom,read_ram, write_ram;
output [7:0] addr_rom; //output PC
output [7:0] addr_ram; //output MAR
output [7:0] out_ACC; //ouput ACC







wire [7:0] w_Outr,w_g,w_gI,w_mar,w_alu, w_mbr, w_mux4, w_mux3, w_mux2;
wire [7:0] wir;
wire [3:0] w_acc, w_rega, w_regb, w_regc, w_regd;

wire alu_sel, mux_sel_u9, mux_sel_u7,inc_pc,load_acc,load_ir,load_mar, load_mbr, load_reg_a, load_reg_b, load_reg_c, load_reg_d, mux_sel_u8, read_ram, read_rom, write_ram;
wire out_ACC;
//control_unit u1(clk, rst,{wir[15:8]}, wbus,y );

//CU u0(clk, rst,opcode, cu_out,y );
//CU u0(clk, rst, wir, wbus );
//module CU(opcode,alu_sel, mux_sel_u9, mux_sel_u7,inc_pc,load_acc,load_ir,load_mar, load_mbr, load_reg_a, load_reg_b, load_reg_c, load_reg_d, mux_sel_u8, read_ram, read_rom, write_ram );
CU u0(wir,alu_sel, mux_sel_u9, mux_sel_u7,inc_pc,load_acc,load_ir,load_mar, load_mbr, load_reg_a, load_reg_b, load_reg_c, load_reg_d, mux_sel_u8, read_ram, read_rom, write_ram );

//module PC(clk, rst, inc, out);
PC u1(clk, rst, inc_pc, addr_rom);

//module IR (clk,rst,load,inst_in, inst_out);
IR u2(clk,rst,load_ir,in_inst, wir);


//module MAR( clk, rst, load_addr,addr_in, addr_out);
MAR u3( clk, rst, load_mar,wir, addr_ram);

//module MBR (clk,rst,load, data, Q);
MBR u4(clk,rst, load_mbr, in_data, w_mbr);

// module reg4bit (clk,rst,load, data, Q);

reg4bit ua (clk,rst, load_reg_a, w_acc, w_rega);
reg4bit ub (clk,rst, load_reg_b, w_acc, w_regb);
reg4bit uc (clk,rst, load_reg_c, w_acc, w_regc);
reg4bit ud (clk,rst, load_reg_d, w_acc, w_regd);

 //mux4ch u7(in_a, in_b, in_c, in_d, sel_mux, mux_out);
mux4ch u7(w_rega, w_regb, w_regc, w_regd, mux_sel_u7, w_mux4);


 //mux2ch (in_a, in_b, sel_mux, mux_out);
 mux2ch u8 (w_mux4, w_mbr, mux_sel_u8, w_mux2);
 
 //module ALU (alu_sel,in_a, in_b,alu_out);
 ALU u6(alu_sel,w_mux2, w_acc,w_alu);
 
 //mux3ch u9(in_a, in_b, in_c, sel_mux, mux_out);
  
 mux3ch u9(w_mux2, w_mbr, w_alu, mux_sel_u9, w_mux3);
  
  //module ACC(clk, rst, D, Q); 
 ACC u5(clk, rst, w_mux3, w_acc); 






	



assign out_ACC = w_acc ;
assign read_rom = read_rom;
assign read_ram = read_ram;
assign write_ram = write_ram;
endmodule 