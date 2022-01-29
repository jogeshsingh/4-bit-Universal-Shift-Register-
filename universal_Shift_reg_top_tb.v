`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 11:19:53 PM
// Design Name: 
// Module Name: universal_Shift_reg_top_tb
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


module universal_Shift_reg_top_tb();
parameter DATA_WIDTH = 4  ;
parameter DATA_WIDTH1 = 2 ;
reg  i_clk  ;
reg clr ;
reg sr ;
reg sl ;
reg [DATA_WIDTH-1:0] in ;
wire  [DATA_WIDTH-1:0] q_out ;
reg [DATA_WIDTH1-1:0] sel_mux ;


universal_Shift_reg_top DUT (
i_clk ,
clr ,
in ,
sel_mux ,
sr, 
sl ,  
q_out  
);


initial 
  begin
  i_clk = 1'b0 ;
  clr = 1'b0 ;
  in = 4'b0000 ;
  sel_mux = 2'b00 ;
  sr = 1'b0 ;
  sl = 1'b0 ;
  end


always #5 i_clk = ~i_clk ;

initial
  begin
   #20 clr = 1'b1 ;
   end

initial repeat (49) #10 sr = ~sr ;
initial repeat (44) #10 sl = ~sl ;

integer i ;

initial
 begin
for (i = 0 ; i<40 ; i = i+ 1)
  begin
  #5 sel_mux = $random() ;
  end
  end
  
  initial
    begin
    for (i = 0 ; i<40 ; i = i+ 1)
  begin
  #10 in = $random() ;
  end
  end
  




endmodule
