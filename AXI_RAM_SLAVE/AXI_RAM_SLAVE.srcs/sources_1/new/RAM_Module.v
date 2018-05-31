`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2018 15:42:57
// Design Name: 
// Module Name: RAM_Module
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


module RAM_Module(clk,read,enable_RW,address,data_in,data_out);


    parameter DATA_WIDTH=8;//length of each word
    parameter ADDRESS_WIDTH=10;
    parameter RAM_DEPTH=(2**(ADDRESS_WIDTH-2));//no_of locations
    
    //parameter MEM_INIT_FILE = "C:\Users\vamsi\Desktop\Main_Project_Code\Mem_block_init_file";//Memry initialization file parameter
    input clk;
    input read;
    input enable_RW;
    input [ADDRESS_WIDTH-1:0] address;
    input [DATA_WIDTH-1:0] data_in;
    output reg[DATA_WIDTH-1:0] data_out;
    
    //memory banks
    reg[7:0] mem [0:255];
    
/*    initial
    begin:Initialization_of_the_RAM_block
        *//*if (MEM_INIT_FILE != "") 
        begin
            $readmemh(MEM_INIT_FILE, mem);
        end*//*
        mem[3]=32'd13;
        mem[4]=32'd14;
        mem[5]=32'd15;
        mem[6]=32'd16;
        mem[7]=32'd17;
    end    
*/
    always@(posedge clk)
    begin
       if(enable_RW)
       begin
            if(read)
            begin
                data_out<=mem[address[9:2]];
            end
            else
            begin
                mem[address[9:2]]<=data_in;
            end
       end
    end

endmodule
