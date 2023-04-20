module ALL(clk,rst, rom_out, ram_out, ram_in, addrram, addrrom );
	
input clk, rst;
output [7:0] rom_out, ram_in, ram_out;
output [3:0] addrram, addrrom;

wire rom_read, ram_read, ram_write;

//module CPU(clk,rst,in_inst, in_data,read_rom,read_ram, write_ram, addr_rom, addr_ram, out_ACC);
CPU cpu1(clk,rst,rom_out, ram_out,read_rom,read_ram, write_ram, addrrom, addrram, ram_in);


//module rom4bit (clk,read, addr, data);
rom4bit rom (clk,read_rom, addrrom, rom_out);

//module ram4bit (clk, Write, Read, Addrs, Data_In, Data_Out);
ram4bit ram (clk, write_ram, read_ram, addrram, ram_in, ram_out);


endmodule
