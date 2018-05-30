`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2018 22:25:48
// Design Name: 
// Module Name: AXI_Slave_RAM
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


module AXI_Slave_RAM(
    //global signals
    clk,
    reset,
    
    //write address channel
    awid,
    awaddr,
    awlen,
    awsize,
    awburst,
    awvalid,
    awready,
    
    //write data channel
    
    wid,
    wdata,
    wstrb,
    wlast,
    wvalid,
    wready,
    
    //write response channel
    
    bid,
    bresp,
    bvalid,
    bready,
    
    //read address channel
    arid,
    araddr,
    arlen,
    arsize,
    arburst,
    arvalid,
    arready,
    
    //read data channel signals
    
    rid,
    rdata,
    rresp,
    rlast,
    rvalid,
    rready
    );
    //parameters
    parameter HIGH=1'b1;
    parameter LOW=1'b0;
    
    
    //global signals
    
    input clk;
    input reset;
    
    //write address channel
    
    input[3:0] awid;
    input[31:0] awaddr;
    input[3:0] awlen;//maximum of 16 ttransfers
    input[2:0] awsize;//max is 7 ,128 length, not sure
    input[1:0] awburst;//burst type of either fixed,incremental or wrapping burst
    input awvalid;
    output awready;
    
    //write data channel
    
    input[3:0] wid;
    input[31:0] wdata;
    input[3:0] wstrb;
    input wlast;
    input wvalid;
    output wready;
    
    //write response channel
    
    output[3:0] bid;
    output[1:0] bresp;
    output bvalid;
    input bready;
    
    //read address channel
    input[3:0] arid;
    input[31:0] araddr;
    input[3:0] arlen;
    input[2:0] arsize;
    input[1:0] arburst;
    input arvalid;
    output arready;
    
    //read data channel signals
    
    output[3:0] rid;
    output[31:0] rdata;
    output[1:0] rresp;
    output rlast;
    output rvalid;
    input rready; 
    
    
    reg[31:0] read_address_queue[0:1];
    reg[3:0] read_id_queue[0:1];
    reg[3:0] read_len_queue[0:1];
    reg[2:0] read_size_queue[0:1];
    reg[1:0] read_burst_queue[0:1];
    reg read_address_read_pointer;
    reg read_address_write_pointer;
    /*reg read_address_queue_full;
    reg read_address_queue_empty;*/
    reg flip;
    
    //process for arready
    always@(posedge clk or negedge reset)
    begin
        if(!reset)
        begin
            arready<=HIGH;
            read_address_write_pointer<=0;
            flip=0;
        end
        else
        begin
            if((read_address_read_pointer!=read_address_write_pointer) || (read_address_read_pointer==read_address_write_pointer && flip==0))//not full
            begin
                if(read_address_read_pointer==1)
                begin
                    read_address_queue[read_address_write_pointer]<=araddr;
                    read_id_queue[read_address_write_pointer]<=arid;
                    read_len_queue[read_address_write_pointer]<=arlen;
                    read_size_queue[read_address_write_pointer]<=arsize;
                    read_burst_queue[read_address_write_pointer]<=arburst;
                    read_address_write_pointer<=0;
                    flip<=1;
                end
                else
                begin
                    read_address_queue[read_address_write_pointer]<=araddr;
                    read_address_write_pointer<=read_address_write_pointer+1;
                end
            end
            else
            begin
            end
        end
    end
    
    parameter READ_IDLE=2'b00;
    parameter READ_BUSY=2'b01;
    reg[1:0] read_state;
    
    always@(posedge clk or negedge reset)
    begin
        if(!reset)
        begin
            read_state<=READ_IDLE;
            read_address_read_pointer<=0;
        end
        else
        begin
            case(read_state)
                READ_IDLE:
                begin
                    if((read_address_read_pointer!=read_address_write_pointer) || (read_address_read_pointer==read_address_write_pointer && flip!=0))//queue not empty
                    begin
                        
                    end
                end
                READ_BUSY:
                begin
                end
            endcase
        end
    end
    
    
endmodule
