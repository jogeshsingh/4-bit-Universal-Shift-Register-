`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:55:49 11/01/2021 
// Design Name: 
// Module Name:    clock_divider 
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
module clock_divider(

i_clk , div_clk
    );
	 input i_clk ;
	 output reg div_clk ;
reg [26:0] cNT_REG ;
parameter count = 50_000_000;  ///fpga clock = 100MHZ = 100MHZ/2 = 50MHZ *****///


always @ (posedge i_clk)
 begin
 if (cNT_REG == count-1 )
  begin
  div_clk = ~div_clk ;
  cNT_REG = 0 ;
  end
  else
  begin
  cNT_REG = cNT_REG + 1'b1 ;
  end
  end
endmodule
