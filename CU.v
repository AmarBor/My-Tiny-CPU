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
    load_reg_b = 1'b1;
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
	load_acc = 1'b1;
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
	load_reg_a = 1'b1;
    load_reg_b = 1'b1;
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
	load_ir = 1'b1;
	load_mar = 1'b1;
	load_mbr = 1'b1;
	load_reg_a = 1'b0;
    load_reg_b = 1'b0;
	load_reg_c = 1'b1;
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
	mux_sel_u7 = 2'b01;
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
    alu_sel = 2'b11;
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
    load_reg_b = 1'b1;
	load_reg_c = 1'b0;
	load_reg_d = 1'b1;
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






/*module CU (clk, rst,opcode, cu_out,y );
input clk, rst;
input [7:0] opcode;
output [14:0] cu_out;
output [7:0] y;
reg [14:0] cu_out;
reg [5:0] y,Y;
parameter[5:0] S0 =0, S1=1, S2=2, S3=3, S4=4, S5=5, S6=6, S7=7, S8=8, S9=9, S10=10, S11=11, S12=12, S13=13;

always@(posedge rst or posedge clk)
if (rst) y <=S0;
else y <=Y;

always@(y)
	case (y)
		S0: Y =S1; //CLEAR PC
		S1: Y = S2;//load MBR
		S2: Y =S3;//READ MEMORY & INCREMENT PC
		S3: Y = S4; //LOAD HIGH BYTE INSTRUCTION SET FROM MBR 
		S4: Y = S5; //SHIFT HIGH BYTE & MAR<-PC
		S5: Y = S6; ////READ MEMORY & INCREMENT PC
		S6: Y = S7; //LOAD LOW BYTE INSTRUCTION SET FROM MBR 
		S7: begin
				case({opcode[7:6]})
				2'b00 : Y=S8; // DATA TRANSFER
				2'b01 : Y=S12; // ARITHMETIC & LOGIC
				2'b10 : Y=S10;// BRANCH 
				2'b11 : Y=S11;// I/O
				endcase
			end
		S8: begin
				case({opcode[5:4]})
				2'b00 : Y=S9; // REGISTER ADDRESSING
				2'b01 : Y=S11; // IMMEDIATE ADDRESSING
				2'b10 : Y=S1;// DIRECT
				2'b11 : Y=S1;// INDIRECT
				endcase
			end
		S9: Y=S1; // READ FROM SOURCE REGISTER
		S10: Y=S11;//WRITE TO DESTINATION
		S11: Y= S1;//READ FROM IR
		S12: Y=S1;
		//S13: Y=S1;
		default: Y = S0;
	endcase
always @ (y)
	case(y)
		S0: cu_out= 14'b00000001000000;
		S1: cu_out= 14'b00000000001000;
		S2: cu_out= 14'b00000000010110;
		S3: cu_out= 14'b00000000000001;
		S4: cu_out= 14'b00000010001000;
		S5: cu_out= 14'b00000000010110;	
		S6: cu_out= 14'b00000000000001;
		S7: cu_out= 14'b00000000000001;
		S8: cu_out= 14'b00000000000001;
		S9:  begin
				case(opcode[2])
				1'b0 : begin    //select source register A
						case(opcode[3])
							1'b0 : cu_out= 14'b00010000000000; //select  destination register A
							1'b1 : cu_out= 14'b00011000000000; //select  destination register B
						endcase
						end
							
				1'b1 :  begin    //select source register B
						case(opcode[3])
							1'b0 : cu_out= 14'b00010100000000; //select  destination register A
							1'b1 : cu_out= 14'b00011100000000; //select  destination register B
						endcase
						end
				endcase
				end
		
		S10:	cu_out= 14'b00100000000001; 
		S11:  begin
				case(opcode[3])
				1'b0 : cu_out= 14'b00110000000000; //select register A
				1'b1 : cu_out= 14'b00111000000000; //select register B
				endcase
				end
		S12:  cu_out= 14'b01110100000000;
	//	S13:  cu_out= 14'b01110100000000;
		default: cu_out= 8'b0100000;		
		
	endcase
endmodule	
*/