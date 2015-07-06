//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Sun Jul  5 19:04:28 2015
//Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (aclk,
    aclken,
    aresetn,
    dst_V_V_tdata,
    dst_V_V_tready,
    dst_V_V_tvalid,
    sof_o);
  input aclk;
  input aclken;
  input aresetn;
  output [63:0]dst_V_V_tdata;
  input dst_V_V_tready;
  output dst_V_V_tvalid;
  output [0:0]sof_o;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire [63:0]dst_V_V_tdata;
  wire dst_V_V_tready;
  wire dst_V_V_tvalid;
  wire [0:0]sof_o;

design_1 design_1_i
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .dst_V_V_tdata(dst_V_V_tdata),
        .dst_V_V_tready(dst_V_V_tready),
        .dst_V_V_tvalid(dst_V_V_tvalid),
        .sof_o(sof_o));
endmodule
