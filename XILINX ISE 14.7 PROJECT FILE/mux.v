`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:49 11/01/2021 
// Design Name: 
// Module Name:    mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
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
( I3 ,I2, I1  , I0 , 
 sel , 
 out  
    );
    
input I0, I1 , I2,I3 ; 
input [1:0] sel ; 
output reg out  ;

always @ *
 begin
  case (sel)
  2'b00 : out = I3 ;
  2'b01 : out = I2;
  2'b10 : out = I1 ;
  2'b11 : out = I0 ;
  endcase
end
endmodule
