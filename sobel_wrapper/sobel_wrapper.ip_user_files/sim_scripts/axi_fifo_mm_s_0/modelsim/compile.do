vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_1
vlib modelsim_lib/msim/lib_fifo_v1_0_10
vlib modelsim_lib/msim/axi_fifo_mm_s_v4_1_12

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_1 modelsim_lib/msim/fifo_generator_v13_2_1
vmap lib_fifo_v1_0_10 modelsim_lib/msim/lib_fifo_v1_0_10
vmap axi_fifo_mm_s_v4_1_12 modelsim_lib/msim/axi_fifo_mm_s_v4_1_12

vlog -work xil_defaultlib -64 -incr -sv -L xil_defaultlib "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../ipstatic/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 -incr "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../ipstatic/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 -incr "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../ipstatic/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_10 -64 -93 \
"../../../ipstatic/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_fifo_mm_s_v4_1_12 -64 -93 \
"../../../ipstatic/hdl/axi_fifo_mm_s_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../sobel_wrapper.srcs/sources_1/ip/axi_fifo_mm_s_0/sim/axi_fifo_mm_s_0.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

