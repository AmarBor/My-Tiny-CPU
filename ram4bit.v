module ram4bit (clk, Write, Read, Addrs, Data_In, Data_Out);
input [3:0] Addrs;
input [3:0] Data_In ;
input clk, Read, Write;
output reg [3:0] Data_Out;

reg [3:0] memory[3:0];

always @( posedge clk)
begin
    if (Write)
        memory[Addrs] <= Data_In;
    if (Read)
        Data_Out <= memory[Addrs];
    else
        Data_Out <= 4'bz;
    
end
endmodule