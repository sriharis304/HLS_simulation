//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
//Date        : Sun Jul  5 19:04:28 2015
//Host        : headlight-pc running 64-bit Ubuntu 12.04.5 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1
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

  wire aclk_1;
  wire aclken_1;
  wire aresetn_1;
  wire [63:0]axis_dwidth_converter_0_m_axis_tdata;
  wire [7:0]axis_dwidth_converter_0_m_axis_tuser;
  wire axis_dwidth_converter_0_m_axis_tvalid;
  wire axis_dwidth_converter_0_s_axis_tready;
  wire [63:0]hls_synchr_strm_1_dst_V_V_TDATA;
  wire hls_synchr_strm_1_dst_V_V_TREADY;
  wire hls_synchr_strm_1_dst_V_V_TVALID;
  wire hls_synchr_strm_1_src_V_V_TREADY;
  wire [0:0]hls_synchr_strm_1_start_sigo;
  wire util_reduced_logic_0_Res;
  wire [39:0]v_tpg_0_m_axis_video_tdata;
  wire v_tpg_0_m_axis_video_tlast;
  wire v_tpg_0_m_axis_video_tuser;
  wire v_tpg_0_m_axis_video_tvalid;
  wire [4:0]xlconcat_0_dout;

  assign aclk_1 = aclk;
  assign aclken_1 = aclken;
  assign aresetn_1 = aresetn;
  assign dst_V_V_tdata[63:0] = hls_synchr_strm_1_dst_V_V_TDATA;
  assign dst_V_V_tvalid = hls_synchr_strm_1_dst_V_V_TVALID;
  assign hls_synchr_strm_1_dst_V_V_TREADY = dst_V_V_tready;
  assign sof_o[0] = hls_synchr_strm_1_start_sigo;
design_1_axis_dwidth_converter_0_1 axis_dwidth_converter_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_tdata(axis_dwidth_converter_0_m_axis_tdata),
        .m_axis_tready(hls_synchr_strm_1_src_V_V_TREADY),
        .m_axis_tuser(axis_dwidth_converter_0_m_axis_tuser),
        .m_axis_tvalid(axis_dwidth_converter_0_m_axis_tvalid),
        .s_axis_tdata(v_tpg_0_m_axis_video_tdata),
        .s_axis_tlast(v_tpg_0_m_axis_video_tlast),
        .s_axis_tready(axis_dwidth_converter_0_s_axis_tready),
        .s_axis_tuser(xlconcat_0_dout),
        .s_axis_tvalid(v_tpg_0_m_axis_video_tvalid));
design_1_hls_synchr_strm_1_0 hls_synchr_strm_1
       (.ap_clk(aclk_1),
        .ap_rst_n(aresetn_1),
        .dst_V_V_TDATA(hls_synchr_strm_1_dst_V_V_TDATA),
        .dst_V_V_TREADY(hls_synchr_strm_1_dst_V_V_TREADY),
        .dst_V_V_TVALID(hls_synchr_strm_1_dst_V_V_TVALID),
        .src_V_V_TDATA(axis_dwidth_converter_0_m_axis_tdata),
        .src_V_V_TREADY(hls_synchr_strm_1_src_V_V_TREADY),
        .src_V_V_TVALID(axis_dwidth_converter_0_m_axis_tvalid),
        .start_sig(util_reduced_logic_0_Res),
        .start_sigo(hls_synchr_strm_1_start_sigo));
design_1_util_reduced_logic_0_0 util_reduced_logic_0
       (.Op1(axis_dwidth_converter_0_m_axis_tuser),
        .Res(util_reduced_logic_0_Res));
design_1_v_tpg_0_0 v_tpg_0
       (.aclk(aclk_1),
        .aclken(aclken_1),
        .aresetn(aresetn_1),
        .m_axis_video_tdata(v_tpg_0_m_axis_video_tdata),
        .m_axis_video_tlast(v_tpg_0_m_axis_video_tlast),
        .m_axis_video_tready(axis_dwidth_converter_0_s_axis_tready),
        .m_axis_video_tuser(v_tpg_0_m_axis_video_tuser),
        .m_axis_video_tvalid(v_tpg_0_m_axis_video_tvalid));
design_1_xlconcat_0_0 xlconcat_0
       (.In0(v_tpg_0_m_axis_video_tuser),
        .In1(v_tpg_0_m_axis_video_tuser),
        .In2(v_tpg_0_m_axis_video_tuser),
        .In3(v_tpg_0_m_axis_video_tuser),
        .In4(v_tpg_0_m_axis_video_tuser),
        .dout(xlconcat_0_dout));
endmodule
