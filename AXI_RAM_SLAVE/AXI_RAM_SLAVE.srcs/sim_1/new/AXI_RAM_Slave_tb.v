`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2018 21:58:12
// Design Name: 
// Module Name: AXI_RAM_Slave_tb
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


module AXI_RAM_Slave_tb(

    );
    
        //global signals
    
    reg clk;
    reg reset;
    
    //write address channel
    
    reg[3:0] awid;
    reg[31:0] awaddr;
    reg[3:0] awlen;//maximum of 16 ttransfers
    reg[2:0] awsize;//max is 7 ,128 length, not sure
    reg[1:0] awburst;//burst type of either fixed,incremental or wrapping burst
    reg awvalid;
    wire awready;
    
    //write data channel
    
    reg[3:0] wid;
    reg[31:0] wdata;
    reg[3:0] wstrb;
    reg wlast;
    reg wvalid;
    wire wready;
    
    //write response channel
    
    wire[3:0] bid;
    wire[1:0] bresp;
    wire bvalid;
    reg bready;
    
    //read address channel
    reg[3:0] arid;
    reg[31:0] araddr;
    reg[3:0] arlen;
    reg[2:0] arsize;
    reg[1:0] arburst;
    reg arvalid;
    wire arready;
    
    //read data channel signals
    
    wire[3:0] rid;
    wire[31:0] rdata;
    wire[1:0] rresp;
    wire rlast;
    wire rvalid;
    reg rready; 
    
    AXI_Slave_RAM Test_Slave(
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
    
    initial
    begin
        clk=0;
        reset=1;
        
        //write address channel
        
        awid=0;
        awaddr=0;
        awlen=0;//maximum of 16 ttransfers
        awsize=0;//max is 7 ,128 length, not sure
        awburst=0;//burst type of either fixed,incremental or wrapping burst
        awvalid=0;
        
        //write data channel
        
        wid=0;
        wdata=0;
        wstrb=0;
        wlast=0;
        wvalid=0;
        
        //write response channel
        bready=0;
        
        //read address channel
        arid=0;
        araddr=0;
        arlen=0;
        arsize=0;
        arburst=0;
        arvalid=0;
        
        //read data channel signals
        rready=0; 
    end
   
   initial
   begin
    #100 $finish;
   end 
    
   always
    #20 clk=!clk; 
    
    initial
    begin
        #4 reset=0;
        #6 reset=1;
    end
    
    
    
    
    
    
    
endmodule
