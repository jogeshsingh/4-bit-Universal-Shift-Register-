`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 10:28:16 PM
// Design Name: 
// Module Name: mux
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


module mux
#( 
  parameter WIDTH_LEN = 2)
( I0 ,I1, I2  , I3 , 
 sel , 
 out  
    );
    
input I0, I1 , I2,I3 ; 
input [WIDTH_LEN-1:0] sel ; 
output reg out  ;

always @ *
 begin
  case (sel)
  2'b00 : out = I0 ;
  2'b01 : out = I1;
  2'b10 : out = I2 ;
  2'b11 : out = I3 ;
  endcase
end
endmodule
