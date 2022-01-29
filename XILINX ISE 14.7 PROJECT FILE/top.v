`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:10:16 11/01/2021 
// Design Name: 
// Module Name:    top 
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
module top
#(
parameter DATA_WIDTH = 4 ,
parameter DATA_WIDTH1 = 2
)

(
i_clk ,
clr ,
in ,
sel_mux ,
sr, 
sl ,  
q_out  
);


input wire  i_clk  ;
input wire clr ;
input sr ;
input sl ;
input [DATA_WIDTH-1:0] in ;
output  [DATA_WIDTH-1:0] q_out ;
input [DATA_WIDTH1-1:0] sel_mux ;
wire [DATA_WIDTH-1:0] out_MUX ;
wire in_clk ;
///8******clock divider instantiation *******///
clock_divider CUt (i_clk , in_clk);

///*******d-flip flop instantiation *******///
D_FF FF1(in_clk , clr  , out_MUX[3], q_out[3]  );
D_FF FF2(in_clk , clr  , out_MUX[2], q_out[2]  );
D_FF FF3(in_clk , clr  , out_MUX[1] , q_out[1]  );
D_FF FF4(in_clk , clr  , out_MUX[0], q_out[0]  );


///********mux instantiation *******///
mux M1 ( q_out[3]  , sr , q_out[2] , in[3]  , sel_mux , out_MUX[3] );
mux M2 ( q_out[2] , q_out[3] ,  q_out[1] , in[2] , sel_mux , out_MUX[2] );
mux M3 ( q_out[1] , q_out[2] ,  q_out[0] , in[1] , sel_mux , out_MUX[1] );
mux M4 ( q_out[0] , q_out[1] ,  sl , in[0] , sel_mux , out_MUX[0] );

endmodule 


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



