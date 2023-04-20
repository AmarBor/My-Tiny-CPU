module ACC(clk, rst, D, Q); 
input clk, rst; 
input  [3:0] D; 
output [3:0] Q; 
reg    [3:0] tmp;  
 
  always @(posedge clk or posedge rst) 
    begin 
      if (rst) 
        tmp = 4'b0000; 
      else 
        tmp = tmp + D; 
    end 
  assign Q = tmp; 
endmodule 