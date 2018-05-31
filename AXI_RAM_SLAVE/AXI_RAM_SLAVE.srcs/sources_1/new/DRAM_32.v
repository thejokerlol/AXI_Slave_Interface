`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2018 12:01:52
// Design Name: 
// Module Name: DRAM_32
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


module DRAM_32(
    clk,
    address,
    read,
    enable_RW,
    size,
    data_in,
    data_out
    );
    
    input clk;
    input address;
    input read;
    
    
    
    
    RAM_Module RAM[3:0](clk,read,enable_RW,address,data_in,data_out);
    
    
    
    
    
    
endmodule
