`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2015 03:11:44 PM
// Design Name: 
// Module Name: tb
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


module tb(  );
    
reg aclk;
//reg clk;
reg aclken;
reg aresetn;
reg     dst_V_V_tready;
wire  [63:0]  dst_V_V_tdata;
wire    dst_V_V_tvalid;
wire    sof_o;
//wire locked;
/*
wire vid_io_out_active_video;
wire  [15:0] vid_io_out_data;
wire        vid_io_out_field;
wire        vid_io_out_hblank;
wire        vid_io_out_hsync;
wire       vid_io_out_vblank;
wire       vid_io_out_vsync;

 
    
     design_1_wrapper v1
       ( .aclk,
         .aclken,
         .aresetn,
         .locked,
         .clk,
         .vid_io_out_active_video,
         .vid_io_out_data ,
         .vid_io_out_field,
         .vid_io_out_hblank,
         .vid_io_out_hsync,
         .vid_io_out_vblank,
         .vid_io_out_vsync);
 */
 design_1_wrapper v1
     (.aclk,
      .aclken,
     .aresetn,
     .dst_V_V_tdata,
     .dst_V_V_tready,
     .dst_V_V_tvalid,
     .sof_o
     );       
  initial begin 
  aresetn =0;
  #100 
  aresetn=1;
  end
  
  initial begin 
   aclken =0;
   #100 
   aclken=1;
   end
   

    initial begin
    aclk =0;
    forever # 26.041 aclk= ~aclk;
    end 
    
    initial begin
    dst_V_V_tready =0;
    
    #100 
    dst_V_V_tready =1;
    end 
  /*  initial begin 
    clk =0;
    forever # 78.123 clk= ~clk;
       end 
       */
endmodule
