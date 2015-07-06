#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2014.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 001c546a3bd64f4d839f94b2ba6f6608 -m64 --debug typical --relax --include "../../../vtpg.srcs/sources_1/ipshared/xilinx.com/axis_infrastructure_v1_1/0c878f81/hdl/verilog" -L axi_lite_ipif_v3_0 -L v_tc_v6_1 -L v_tpg_v6_0 -L xil_defaultlib -L util_reduced_logic_v2_0 -L axis_infrastructure_v1_1 -L axis_register_slice_v1_1 -L axis_dwidth_converter_v1_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_behav xil_defaultlib.tb xil_defaultlib.glbl -log elaborate.log
