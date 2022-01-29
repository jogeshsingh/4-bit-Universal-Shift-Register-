`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 10:33:32 PM
// Design Name: 
// Module Name: D_FF
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_FF(
input i_clk , 
input clr  , 
input d_in,
output reg q  );


always @ (posedge i_clk )
 begin
  if (~clr )
    begin 
     q <= 1'b0 ;
     end
   else
     begin
    q <= d_in ;
    end 
    end  
endmodule
