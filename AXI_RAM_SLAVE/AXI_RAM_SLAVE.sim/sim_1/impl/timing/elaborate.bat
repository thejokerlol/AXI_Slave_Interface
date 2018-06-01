@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto cf8bc1cb6eef46aa844a684685ef5b32 -m64 --debug typical --relax --mt 2 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot AXI_RAM_Slave_tb_time_impl -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.AXI_RAM_Slave_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
