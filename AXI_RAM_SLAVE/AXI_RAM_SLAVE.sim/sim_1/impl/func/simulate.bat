@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xsim AXI_RAM_Slave_tb_func_impl -key {Post-Implementation:sim_1:Functional:AXI_RAM_Slave_tb} -tclbatch AXI_RAM_Slave_tb.tcl -view C:/Users/vamsi/Desktop/AXI_Slave_Interface/AXI_RAM_SLAVE/AXI_RAM_Slave_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
