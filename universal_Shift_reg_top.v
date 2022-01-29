`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 10:16:50 PM
// Design Name: 
// Module Name: universal_Shift_reg_top
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


module universal_Shift_reg_top
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

//instantiation of D_FF//
D_FF FF1(i_clk , clr  , out_MUX[3], q_out[3]  );
D_FF FF2(i_clk , clr  , out_MUX[2], q_out[2]  );
D_FF FF3(i_clk , clr  , out_MUX[1] , q_out[1]  );
D_FF FF4(i_clk , clr  , out_MUX[0], q_out[0]  );


//instantiation of MUX///
mux M1 ( q_out[3]  , sr , q_out[2] , in[3]  , sel_mux , out_MUX[0] );
mux M2 ( q_out[2] , q_out[3] ,  q_out[1] , in[2] , sel_mux , out_MUX[1] );
mux M3 ( q_out[1] , q_out[2] ,  q_out[0] , in[1] , sel_mux , out_MUX[2] );
mux M4 ( q_out[0] , q_out[1] ,  sl , in[0] , sel_mux , out_MUX[3] );

    







endmodule
