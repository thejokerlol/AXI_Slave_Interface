`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2018 19:50:35
// Design Name: 
// Module Name: RAM
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
module RAM(clk,read,enable_RW,address,data_in,data_out);


    parameter DATA_WIDTH=32;//length of each word
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
    reg[7:0] mem [0:255][0:3];
    
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
                data_out[7:0]<=mem[address/4][address%4];
                data_out[15:8]<=mem[(address+1)/4][(address+1)%4];
                data_out[23:16]<=mem[(address+2)/4][(address+2)%4];
                data_out[31:24]<=mem[(address+3)/4][(address+3)%4];
            end
            else
            begin
                mem[address/4][address%4]<=data_in[7:0];
                mem[(address+1)/4][(address+1)%4]<=data_in[15:8];
                mem[(address+2)/4][(address+2)%4]<=data_in[23:16];
                mem[(address+3)/4][(address+3)%4]<=data_in[31:24];                
            end
       end
    end

endmodule


