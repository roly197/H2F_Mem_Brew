
# (C) 2001-2016 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 15.1 185 linux 2016.03.12.16:21:25

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# This script can be used to simulate the following IP:
#     soc_system
# To create a top-level simulation script which compiles other
# IP, and manages other system issues, copy the following template
# and adapt it to your needs:
# 
# # Start of template
# # If the copied and modified template file is "ncsim.sh", run it as:
# #   ./ncsim.sh
# #
# # Do the file copy, dev_com and com steps
# source ncsim_setup.sh \
# SKIP_ELAB=1 \
# SKIP_SIM=1
# 
# # Compile the top level module
# ncvlog -sv "$QSYS_SIMDIR/../top.sv"
# 
# # Do the elaboration and sim steps
# # Override the top-level name
# # Override the user-defined sim options, so the simulation
# # runs forever (until $finish()).
# source ncsim_setup.sh \
# SKIP_FILE_COPY=1 \
# SKIP_DEV_COM=1 \
# SKIP_COM=1 \
# TOP_LEVEL_NAME=top \
# USER_DEFINED_SIM_OPTIONS=""
# # End of template
# ----------------------------------------
# If soc_system is one of several IP cores in your
# Quartus project, you can generate a simulation script
# suitable for inclusion in your top-level simulation
# script by running the following command line:
# 
# ip-setup-simulation --quartus-project=<quartus project>
# 
# ip-setup-simulation will discover the Altera IP
# within the Quartus project, and generate a unified
# script which supports all the Altera IP within the design.
# ----------------------------------------
# ACDS 15.1 185 linux 2016.03.12.16:21:25
# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="soc_system"
QSYS_SIMDIR="./../"
QUARTUS_INSTALL_DIR="/home/quartus/altera_lite/15.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `ncsim -version` != *"ncsim(64)"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/error_adapter_0/
mkdir -p ./libraries/border/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/hps_0_f2h_axi_slave_agent/
mkdir -p ./libraries/avalon_st_adapter_001/
mkdir -p ./libraries/avalon_st_adapter/
mkdir -p ./libraries/fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter/
mkdir -p ./libraries/rsp_mux_003/
mkdir -p ./libraries/rsp_mux_002/
mkdir -p ./libraries/rsp_demux_004/
mkdir -p ./libraries/rsp_demux_002/
mkdir -p ./libraries/rsp_demux_001/
mkdir -p ./libraries/cmd_mux_004/
mkdir -p ./libraries/cmd_mux_002/
mkdir -p ./libraries/cmd_mux_001/
mkdir -p ./libraries/cmd_demux_003/
mkdir -p ./libraries/cmd_demux_002/
mkdir -p ./libraries/onchip_memory2_0_s1_burst_adapter/
mkdir -p ./libraries/fpga_only_master_master_limiter/
mkdir -p ./libraries/router_009/
mkdir -p ./libraries/router_007/
mkdir -p ./libraries/router_006/
mkdir -p ./libraries/router_005/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/onchip_memory2_0_s1_agent/
mkdir -p ./libraries/fpga_only_master_master_agent/
mkdir -p ./libraries/hps_0_h2f_axi_master_agent/
mkdir -p ./libraries/onchip_memory2_0_s1_translator/
mkdir -p ./libraries/fpga_only_master_master_translator/
mkdir -p ./libraries/hps_io/
mkdir -p ./libraries/fpga_interfaces/
mkdir -p ./libraries/p2b_adapter/
mkdir -p ./libraries/b2p_adapter/
mkdir -p ./libraries/transacto/
mkdir -p ./libraries/p2b/
mkdir -p ./libraries/b2p/
mkdir -p ./libraries/fifo/
mkdir -p ./libraries/timing_adt/
mkdir -p ./libraries/jtag_phy_embedded_in_jtag_master/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper_001/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/sysid_qsys/
mkdir -p ./libraries/pio_led/
mkdir -p ./libraries/onchip_memory2_0/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/intr_capturer_0/
mkdir -p ./libraries/hps_0/
mkdir -p ./libraries/fpga_only_master/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/soc_system_onchip_memory2_0.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                      -work altera_ver           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                               -work lpm_ver              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                  -work sgate_ver            
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                              -work altera_mf_ver        
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                          -work altera_lnsim_ver     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                         -work cyclonev_ver         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                    -work cyclonev_hssi_ver    
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cadence/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                      -work altera_common_sv_packages                                        -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                               -work altera_common_sv_packages                                        -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                      -work altera_common_sv_packages                                        -cdslib ./cds_libs/altera_common_sv_packages.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_001_error_adapter_0.sv" -work error_adapter_0                                                  -cdslib ./cds_libs/error_adapter_0.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_error_adapter_0.sv"     -work error_adapter_0                                                  -cdslib ./cds_libs/error_adapter_0.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                         -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                       -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                         -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                         -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border_memory.sv"                              -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border_hps_io.sv"                              -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io_border.sv"                                     -work border                                                           -cdslib ./cds_libs/border.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work rsp_mux                                                          -cdslib ./cds_libs/rsp_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_rsp_mux.sv"                               -work rsp_mux                                                          -cdslib ./cds_libs/rsp_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_rsp_demux.sv"                             -work rsp_demux                                                        -cdslib ./cds_libs/rsp_demux.cds.lib                                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work cmd_mux                                                          -cdslib ./cds_libs/cmd_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_cmd_mux.sv"                               -work cmd_mux                                                          -cdslib ./cds_libs/cmd_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_cmd_demux.sv"                             -work cmd_demux                                                        -cdslib ./cds_libs/cmd_demux.cds.lib                                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_router_001.sv"                            -work router_001                                                       -cdslib ./cds_libs/router_001.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1_router.sv"                                -work router                                                           -cdslib ./cds_libs/router.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_axi_slave_ni.sv"                                         -work hps_0_f2h_axi_slave_agent                                        -cdslib ./cds_libs/hps_0_f2h_axi_slave_agent.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                   -work hps_0_f2h_axi_slave_agent                                        -cdslib ./cds_libs/hps_0_f2h_axi_slave_agent.cds.lib                                       
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                               -work hps_0_f2h_axi_slave_agent                                        -cdslib ./cds_libs/hps_0_f2h_axi_slave_agent.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                    -work hps_0_f2h_axi_slave_agent                                        -cdslib ./cds_libs/hps_0_f2h_axi_slave_agent.cds.lib                                       
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter_001.v"                  -work avalon_st_adapter_001                                            -cdslib ./cds_libs/avalon_st_adapter_001.cds.lib                                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_avalon_st_adapter.v"                      -work avalon_st_adapter                                                -cdslib ./cds_libs/avalon_st_adapter.cds.lib                                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                                        -work fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter -cdslib ./cds_libs/fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                    -work fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter -cdslib ./cds_libs/fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                   -work fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter -cdslib ./cds_libs/fpga_only_master_master_to_onchip_memory2_0_s1_cmd_width_adapter.cds.lib
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work rsp_mux_003                                                      -cdslib ./cds_libs/rsp_mux_003.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_mux_003.sv"                           -work rsp_mux_003                                                      -cdslib ./cds_libs/rsp_mux_003.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work rsp_mux_002                                                      -cdslib ./cds_libs/rsp_mux_002.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_mux_002.sv"                           -work rsp_mux_002                                                      -cdslib ./cds_libs/rsp_mux_002.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work rsp_mux                                                          -cdslib ./cds_libs/rsp_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_mux.sv"                               -work rsp_mux                                                          -cdslib ./cds_libs/rsp_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_demux_004.sv"                         -work rsp_demux_004                                                    -cdslib ./cds_libs/rsp_demux_004.cds.lib                                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_demux_002.sv"                         -work rsp_demux_002                                                    -cdslib ./cds_libs/rsp_demux_002.cds.lib                                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_demux_001.sv"                         -work rsp_demux_001                                                    -cdslib ./cds_libs/rsp_demux_001.cds.lib                                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_rsp_demux.sv"                             -work rsp_demux                                                        -cdslib ./cds_libs/rsp_demux.cds.lib                                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work cmd_mux_004                                                      -cdslib ./cds_libs/cmd_mux_004.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_mux_004.sv"                           -work cmd_mux_004                                                      -cdslib ./cds_libs/cmd_mux_004.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work cmd_mux_002                                                      -cdslib ./cds_libs/cmd_mux_002.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_mux_002.sv"                           -work cmd_mux_002                                                      -cdslib ./cds_libs/cmd_mux_002.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work cmd_mux_001                                                      -cdslib ./cds_libs/cmd_mux_001.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_mux_001.sv"                           -work cmd_mux_001                                                      -cdslib ./cds_libs/cmd_mux_001.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                                           -work cmd_mux                                                          -cdslib ./cds_libs/cmd_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_mux.sv"                               -work cmd_mux                                                          -cdslib ./cds_libs/cmd_mux.cds.lib                                                         
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_demux_003.sv"                         -work cmd_demux_003                                                    -cdslib ./cds_libs/cmd_demux_003.cds.lib                                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_demux_002.sv"                         -work cmd_demux_002                                                    -cdslib ./cds_libs/cmd_demux_002.cds.lib                                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_cmd_demux.sv"                             -work cmd_demux                                                        -cdslib ./cds_libs/cmd_demux.cds.lib                                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                                        -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_uncmpr.sv"                                 -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_13_1.sv"                                   -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter_new.sv"                                    -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_incr_burst_converter.sv"                                        -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_wrap_burst_converter.sv"                                        -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_default_burst_converter.sv"                                     -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                    -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                    -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                      -work onchip_memory2_0_s1_burst_adapter                                -cdslib ./cds_libs/onchip_memory2_0_s1_burst_adapter.cds.lib                               
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                                      -work fpga_only_master_master_limiter                                  -cdslib ./cds_libs/fpga_only_master_master_limiter.cds.lib                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                                       -work fpga_only_master_master_limiter                                  -cdslib ./cds_libs/fpga_only_master_master_limiter.cds.lib                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                               -work fpga_only_master_master_limiter                                  -cdslib ./cds_libs/fpga_only_master_master_limiter.cds.lib                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                      -work fpga_only_master_master_limiter                                  -cdslib ./cds_libs/fpga_only_master_master_limiter.cds.lib                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_009.sv"                            -work router_009                                                       -cdslib ./cds_libs/router_009.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_007.sv"                            -work router_007                                                       -cdslib ./cds_libs/router_007.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_006.sv"                            -work router_006                                                       -cdslib ./cds_libs/router_006.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_005.sv"                            -work router_005                                                       -cdslib ./cds_libs/router_005.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_003.sv"                            -work router_003                                                       -cdslib ./cds_libs/router_003.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router_002.sv"                            -work router_002                                                       -cdslib ./cds_libs/router_002.cds.lib                                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0_router.sv"                                -work router                                                           -cdslib ./cds_libs/router.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                                          -work onchip_memory2_0_s1_agent                                        -cdslib ./cds_libs/onchip_memory2_0_s1_agent.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"                                   -work onchip_memory2_0_s1_agent                                        -cdslib ./cds_libs/onchip_memory2_0_s1_agent.cds.lib                                       
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                                         -work fpga_only_master_master_agent                                    -cdslib ./cds_libs/fpga_only_master_master_agent.cds.lib                                   
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                                        -work hps_0_h2f_axi_master_agent                                       -cdslib ./cds_libs/hps_0_h2f_axi_master_agent.cds.lib                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"                                    -work hps_0_h2f_axi_master_agent                                       -cdslib ./cds_libs/hps_0_h2f_axi_master_agent.cds.lib                                      
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                                     -work onchip_memory2_0_s1_translator                                   -cdslib ./cds_libs/onchip_memory2_0_s1_translator.cds.lib                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"                                    -work fpga_only_master_master_translator                               -cdslib ./cds_libs/fpga_only_master_master_translator.cds.lib                              
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_hps_0_hps_io.v"                                             -work hps_io                                                           -cdslib ./cds_libs/hps_io.cds.lib                                                          
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                                         -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                                                  -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                                     -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                                     -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                                      -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                                       -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                                         -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                                         -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces_f2h_cold_reset_req.sv"                -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces_f2h_debug_reset_req.sv"               -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces_f2h_warm_reset_req.sv"                -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces_f2h_stm_hw_events.sv"                 -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_hps_0_fpga_interfaces.sv"                                   -work fpga_interfaces                                                  -cdslib ./cds_libs/fpga_interfaces.cds.lib                                                 
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_fpga_only_master_p2b_adapter.sv"                            -work p2b_adapter                                                      -cdslib ./cds_libs/p2b_adapter.cds.lib                                                     
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_fpga_only_master_b2p_adapter.sv"                            -work b2p_adapter                                                      -cdslib ./cds_libs/b2p_adapter.cds.lib                                                     
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_packets_to_master.v"                                     -work transacto                                                        -cdslib ./cds_libs/transacto.cds.lib                                                       
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_packets_to_bytes.v"                                   -work p2b                                                              -cdslib ./cds_libs/p2b.cds.lib                                                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_bytes_to_packets.v"                                   -work b2p                                                              -cdslib ./cds_libs/b2p.cds.lib                                                             
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                               -work fifo                                                             -cdslib ./cds_libs/fifo.cds.lib                                                            
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_fpga_only_master_timing_adt.sv"                             -work timing_adt                                                       -cdslib ./cds_libs/timing_adt.cds.lib                                                      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_jtag_interface.v"                                     -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_dc_streaming.v"                                            -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_sld_node.v"                                                -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_jtag_streaming.v"                                               -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_clock_crosser.v"                                      -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_std_synchronizer_nocut.v"                                       -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                                      -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_remover.v"                                       -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_avalon_st_idle_inserter.v"                                      -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_stage.sv"                                    -work jtag_phy_embedded_in_jtag_master                                 -cdslib ./cds_libs/jtag_phy_embedded_in_jtag_master.cds.lib                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                             -work rst_controller                                                   -cdslib ./cds_libs/rst_controller.cds.lib                                                  
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                           -work rst_controller                                                   -cdslib ./cds_libs/rst_controller.cds.lib                                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_irq_mapper_001.sv"                                          -work irq_mapper_001                                                   -cdslib ./cds_libs/irq_mapper_001.cds.lib                                                  
  ncvlog -sv $USER_DEFINED_COMPILE_OPTIONS "$QSYS_SIMDIR/submodules/soc_system_irq_mapper.sv"                                              -work irq_mapper                                                       -cdslib ./cds_libs/irq_mapper.cds.lib                                                      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_1.v"                                        -work mm_interconnect_1                                                -cdslib ./cds_libs/mm_interconnect_1.cds.lib                                               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_mm_interconnect_0.v"                                        -work mm_interconnect_0                                                -cdslib ./cds_libs/mm_interconnect_0.cds.lib                                               
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_sysid_qsys.vo"                                              -work sysid_qsys                                                       -cdslib ./cds_libs/sysid_qsys.cds.lib                                                      
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_pio_led.v"                                                  -work pio_led                                                          -cdslib ./cds_libs/pio_led.cds.lib                                                         
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_onchip_memory2_0.v"                                         -work onchip_memory2_0                                                 -cdslib ./cds_libs/onchip_memory2_0.cds.lib                                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_jtag_uart.v"                                                -work jtag_uart                                                        -cdslib ./cds_libs/jtag_uart.cds.lib                                                       
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/intr_capturer.v"                                                       -work intr_capturer_0                                                  -cdslib ./cds_libs/intr_capturer_0.cds.lib                                                 
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_hps_0.v"                                                    -work hps_0                                                            -cdslib ./cds_libs/hps_0.cds.lib                                                           
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/submodules/soc_system_fpga_only_master.v"                                         -work fpga_only_master                                                 -cdslib ./cds_libs/fpga_only_master.cds.lib                                                
  ncvlog $USER_DEFINED_COMPILE_OPTIONS     "$QSYS_SIMDIR/soc_system.v"                                                                                                                                                                                                                                       
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim -licqueue $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
