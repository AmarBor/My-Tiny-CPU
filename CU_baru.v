//CU baru`timescale 1ns / 1ps

module CU(
      input[3:0] opcode,
      output reg[1:0] alu_sel, mux_sel_u9,
	  output reg[2:0] mux_sel_u7,
      output reg inc_pc,load_acc,load_ir,load_mar, load_mbr, load_reg_a, load_reg_b, load_reg_c, load_reg_d, mux_sel_u8,read_ram, read_rom, write_ram 
    );


always @(*)
begin
 case(opcode) 
 4'b0000:  // Reg_addressing ,add 
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;
    
       
   end
 4'b0001:  // SW
   begin
   alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b0;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b0;
    read_rom = 1'b0;
    write_ram = 1'b1;
   
    
   end
 4'b0010:  // data_processing
   begin
   
   alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b0;
	load_mbr = 1'b1;
	load_reg_a = 1'b1;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b0;
    write_ram = 1'b0;
   
    
   end
 4'b0011:  // data_processing
   begin
   
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;  
  end
  
 4'b0100:  // data_processing
   begin
	alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;
   end
 4'b0101:  // data_processing
   begin
   alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;
   end
 4'b0110:  // data_processing
   begin
	alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0; 
   end
 4'b0111:  // data_processing
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;  
   end
 4'b1000:  // data_processing
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0; 
   end
 4'b1001:  // data_processing
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;   
   end
 4'b1011:  // load_acc
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b0; 
	load_acc = 1'b1;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b01;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;  
   end
 4'b1100:  // load_ir
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0; 
   end
 4'b1101:  // J
   begin
    alu_sel = 2'b00;
	inc_pc = 1'b1; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b1;
    mux_sel_u9 = 2'b01;
    read_ram = 1'b1;
    read_rom = 1'b1;
    write_ram = 1'b0;   
   end   
 default: begin
    alu_sel = 2'b00;
	inc_pc = 1'b0; 
	load_acc = 1'b0;
	load_ir = 1'b0;
	load_mar = 1'b0;
	load_mbr = 1'b0;
	load_reg_a = 1'b1;
    load_reg_b = 1'b0;
	load_reg_c = 1'b0;
	load_reg_d = 1'b0;
	mux_sel_u7 = 2'b00;
	mux_sel_u8 = 1'b0;
    mux_sel_u9 = 2'b00;
    read_ram = 1'b1;
    read_rom = 1'b0;
    write_ram = 1'b0;
   end
 endcase
 end

endmodule