`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NITK
// Engineer: UDAY KIRAN
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
    input[1:0] awsize;//max is 7 ,128 length, not sure
    input[1:0] awburst;//burst type of either fixed,incremental or wrapping burst
    input awvalid;
    output reg awready;
    
    //write data channel
    
    input[3:0] wid;
    input[31:0] wdata;
    input[3:0] wstrb;
    input wlast;
    input wvalid;
    output reg wready;
    
    //write response channel
    
    output reg[3:0] bid;
    output reg[1:0] bresp;
    output reg bvalid;
    input bready;
    
    //read address channel
    input[3:0] arid;
    input[31:0] araddr;
    input[3:0] arlen;
    input[1:0] arsize;
    input[1:0] arburst;
    input arvalid;
    output reg arready;
    
    //read data channel signals
    
    output reg[3:0] rid;
    output reg[31:0] rdata;
    output reg[1:0] rresp;
    output reg rlast;
    output reg rvalid;
    input rready; 
    
    //read queue signals
    reg[31:0] read_address_queue[0:1];
    reg[3:0] read_id_queue[0:1];
    reg[3:0] read_len_queue[0:1];
    reg[1:0] read_size_queue[0:1];
    reg[1:0] read_burst_queue[0:1];
    reg read_address_read_pointer;
    reg read_address_write_pointer;
    reg read_address_queue_full;
    reg read_address_queue_empty;
    reg flip;
    
    //write queue signals
    reg[31:0] write_address_queue[0:1];
    reg[3:0] write_id_queue[0:1];
    reg[3:0] write_len_queue[0:1];
    reg[1:0] write_size_queue[0:1];
    reg[1:0] write_burst_queue[0:1];
    reg write_address_read_pointer;
    reg write_address_write_pointer;
    reg write_address_queue_full;
    reg write_address_queue_empty;
    reg write_flip;
    
    
    //intermediate reg signals
    reg[7:0] WDATA[0:3];
    
    
    
    
    //RAM Control signals
    reg[3:0] read;
    reg[3:0] enable_RW;
    reg[9:0] address[3:0];
    reg[7:0] data_in[3:0];
    wire[7:0] data_out[3:0];
    
    
    
    
    genvar ram_bank;
    generate
        for(ram_bank=0;ram_bank<4;ram_bank=ram_bank+1)
        begin
            RAM_Module R(clk,read[ram_bank],enable_RW[ram_bank],address[ram_bank],data_in[ram_bank],data_out[ram_bank]);
        end
    endgenerate
    
    //always block for WDATA
    always@(*)
    begin
        WDATA[3]=wdata[31:24];
        WDATA[2]=wdata[23:16];
        WDATA[1]=wdata[15:8];
        WDATA[0]=wdata[7:0];
    end
    
    
    //process for arready
    parameter READ_ADDRESS_IDLE_STATE=1'b0;
    parameter READ_ADDRESS_BUSY_STATE=1'b1;
    reg read_address_state;    
    
    //process for arready and awready
    always@(*)
    begin
        arready=!read_address_queue_full;
        awready=!write_address_queue_full;
        
    end
    
    
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
            if(!read_address_queue_full)//not full
            begin
                if(arvalid==HIGH)
                begin
                    read_address_queue[read_address_write_pointer]<=araddr;
                    read_id_queue[read_address_write_pointer]<=arid;
                    read_len_queue[read_address_write_pointer]<=arlen;
                    read_size_queue[read_address_write_pointer]<=arsize;
                    read_burst_queue[read_address_write_pointer]<=arburst;
                    if(read_address_write_pointer==1)
                    begin      
                        read_address_write_pointer<=0;
                    end
                    else
                    begin
                        read_address_write_pointer<=read_address_write_pointer+1;
                    end
                end
            end
        end
    end
    
    //process for awready
    always@(posedge clk or negedge reset)
    begin
        if(!reset)
        begin
            write_address_write_pointer<=0;
        end
        else
        begin
            if(!write_address_queue_full)//not full
            begin
                if(awvalid==HIGH)
                begin
                    write_address_queue[write_address_write_pointer]<=awaddr;
                    write_id_queue[write_address_write_pointer]<=awid;
                    write_len_queue[write_address_write_pointer]<=awlen;
                    write_size_queue[write_address_write_pointer]<=awsize;
                    write_burst_queue[write_address_write_pointer]<=awburst;
                    
                    if(write_address_read_pointer==1)
                    begin
                        write_address_write_pointer<=0;                     
                    end
                    else
                    begin
                        write_address_write_pointer<=write_address_write_pointer+1;
                    end
                end
            end
        end
    end
   //process for write flip
   
   always@(posedge clk or negedge reset)
   begin
        if(!reset)
        begin
            write_flip=0;
        end
        else
        begin
            if(((!write_address_queue_full) && (awvalid==HIGH) && (write_address_write_pointer==1)) || 
            (ram_controller_state==WAIT_FOR_BREADY && bready==1 && write_address_read_pointer==1))
            begin
                write_flip<=!write_flip;
            end
        end
   end
   
   //process for flip
   always@(posedge clk or negedge reset)
   begin
        if(!reset)
        begin
            flip=0;
        end
        else
        begin
            if(((!read_address_queue_full) && (arvalid==HIGH) && (read_address_write_pointer==1)) ||
            (ram_controller_state==WAIT_FOR_RREADY && rready==HIGH && (no_of_transfers==read_len_queue[read_address_read_pointer]) && read_address_read_pointer==1))
            begin
                flip<=!flip;
            end
        end
   end
   
        
   //process for read queue empty
   
   always@(*)
   begin
        if((read_address_read_pointer==read_address_write_pointer) && (flip==0))
        begin
            read_address_queue_empty=1;
        end
        else
        begin
            read_address_queue_empty=0;
        end
   end 
   //process for read queue full
   
   always@(*)
   begin
        if((read_address_read_pointer==read_address_write_pointer) && (flip!=0))
        begin
            read_address_queue_full=1;
        end
        else
        begin
            read_address_queue_full=0;
        end
   end 
   
   //process for write queue empty
   always@(*)
   begin
        if((write_address_read_pointer==write_address_write_pointer) && (write_flip==0))
        begin
            write_address_queue_empty=1;
        end
        else
        begin
            write_address_queue_empty=0;
        end
   end    
   
   //process for write queue full

   always@(*)
   begin
        if((write_address_read_pointer==write_address_write_pointer) && (write_flip!=0))
        begin
            write_address_queue_full=1;
        end
        else
        begin
            write_address_queue_full=0;
        end
   end     
   
   //process to control RAM signals
   parameter RAM_CONTROLLER_IDLE=4'b0000;
   parameter WAIT_FOR_CLK_CYCLE=4'b0001;
   parameter PUT_DATA_ON_BUS=4'b0010;
   parameter WAIT_FOR_RREADY=4'b0011;
   parameter WAIT_FOR_WVALID=4'b0100;
   parameter WAIT_FOR_BREADY=4'b0101;
   reg[2:0] no_of_transfers;
   reg[3:0] ram_controller_state;
   reg[1:0] read_size;
   reg[31:0] read_address;
   reg[31:0] write_address;
   always@(posedge clk or negedge reset)
   begin
        if(!reset)
        begin
            ram_controller_state<=RAM_CONTROLLER_IDLE;
            write_address_read_pointer<=0;
            read_address_read_pointer<=0;
            no_of_transfers<=0;
            bid<=0;
            bvalid<=0;
            bresp<=0;
            wready<=0;
            rvalid<=0;
            rdata<=0;
            rid<=0;
        end
        else
        begin
            case(ram_controller_state)
                RAM_CONTROLLER_IDLE:
                begin
                    if(!read_address_queue_empty)
                    begin
                        read[0]=0;
                        read[1]=0;
                        read[2]=0;
                        read[3]=0;
                        enable_RW[0]=0;
                        enable_RW[1]=0;
                        enable_RW[2]=0;
                        enable_RW[3]=0;
                        case(read_size_queue[read_address_read_pointer])
                            2'b00://one byte
                            begin
                                address[read_address_queue[read_address_read_pointer]%4]<=read_address_queue[read_address_read_pointer];
                                enable_RW[read_address_queue[read_address_read_pointer]%4]<=1;
                                read[read_address_queue[read_address_read_pointer]%4]<=1;
                                
                            end
                            2'b01://two bytes
                            begin
                                //first byte
                                address[read_address_queue[read_address_read_pointer]%4]<=read_address_queue[read_address_read_pointer];
                                enable_RW[read_address_queue[read_address_read_pointer]%4]<=1;
                                read[read_address_queue[read_address_read_pointer]%4]<=1;
                                
                                //second byte
                                address[(read_address_queue[read_address_read_pointer]+1)%4]<=read_address_queue[read_address_read_pointer]+1;
                                enable_RW[(read_address_queue[read_address_read_pointer]+1)%4]<=1;
                                read[(read_address_queue[read_address_read_pointer]+1)%4]<=1;
                            end
                            2'b10://4 bytes
                            begin
                               //first byte
                                address[read_address_queue[read_address_read_pointer]%4]<=read_address_queue[read_address_read_pointer];
                                enable_RW[read_address_queue[read_address_read_pointer]%4]<=1;
                                read[read_address_queue[read_address_read_pointer]%4]<=1;
                                
                                //second byte
                                address[(read_address_queue[read_address_read_pointer]+1)%4]<=read_address_queue[read_address_read_pointer]+1;
                                enable_RW[(read_address_queue[read_address_read_pointer]+1)%4]<=1;
                                read[(read_address_queue[read_address_read_pointer]+1)%4]<=1;                                
                                
                                //third byte
                                address[(read_address_queue[read_address_read_pointer]+2)%4]<=read_address_queue[read_address_read_pointer]+2;
                                enable_RW[(read_address_queue[read_address_read_pointer]+2)%4]<=1;
                                read[(read_address_queue[read_address_read_pointer]+2)%4]<=1;                                
                                
                                //fourth byte
                                address[(read_address_queue[read_address_read_pointer]+3)%4]<=read_address_queue[read_address_read_pointer]+3;
                                enable_RW[(read_address_queue[read_address_read_pointer]+3)%4]<=1;
                                read[(read_address_queue[read_address_read_pointer]+3)%4]<=1;                                
                            end
                            default://an error
                            begin
                            end
                            endcase
                        read_address<=read_address_queue[read_address_read_pointer];
                        ram_controller_state<=WAIT_FOR_CLK_CYCLE;
                    end
                    else if(!write_address_queue_empty)
                    begin
                        ram_controller_state<=WAIT_FOR_WVALID;
                        wready=1;
                        write_address<=write_address_queue[write_address_read_pointer];
                    end
                    else
                    begin
                        ram_controller_state<=RAM_CONTROLLER_IDLE;
                    end
                end
                WAIT_FOR_CLK_CYCLE:
                begin
                    ram_controller_state<=PUT_DATA_ON_BUS;
                    enable_RW[0]<=LOW;
                    enable_RW[1]<=LOW;
                    enable_RW[2]<=LOW;
                    enable_RW[3]<=LOW;
                    
                end
                PUT_DATA_ON_BUS:
                begin
                    case(read_size_queue[read_address_read_pointer])
                        2'b00://one byte
                        begin
                            rdata[7:0]<=data_out[read_address%4];
                        end
                        2'b01://two bytes
                        begin
                            rdata[7:0]<=data_out[read_address%4];
                            rdata[15:8]<=data_out[(read_address+1)%4];
                        end
                        2'b10://four bytes
                        begin
                            rdata[7:0]<=data_out[read_address%4];
                            rdata[15:8]<=data_out[(read_address+1)%4];
                            rdata[23:16]<=data_out[(read_address+2)%4];
                            rdata[31:24]<=data_out[(read_address+3)%4];
                        end
                        default:
                        begin
                        end
                    endcase
                    read_address<=read_address_queue[read_address_read_pointer]+(2**(read_size_queue[read_address_read_pointer]));
                    rvalid<=HIGH;
                    no_of_transfers<=no_of_transfers+1;
                    ram_controller_state<=WAIT_FOR_RREADY;
                end
                WAIT_FOR_RREADY:
                begin
                    if(rready==HIGH)
                    begin
                        rvalid=LOW;
                        if(no_of_transfers<(read_len_queue[read_address_read_pointer]))
                        begin
                            //address<=address+(2**(read_size_queue[read_address_read_pointer-1]));
                            read[0]=0;
                            read[1]=0;
                            read[2]=0;
                            read[3]=0;
                            enable_RW[0]=0;
                            enable_RW[1]=0;
                            enable_RW[2]=0;
                            enable_RW[3]=0;
                            case(read_size_queue[read_address_read_pointer])
                                2'b00://one byte
                                begin
                                    address[read_address%4]<=read_address;
                                    enable_RW[read_address%4]<=1;
                                    read[read_address%4]<=1;
                                end
                                2'b01://two bytes
                                begin
                                    //first byte
                                    address[read_address%4]<=read_address;
                                    enable_RW[read_address%4]<=1;
                                    read[read_address%4]<=1;
                                    
                                    //second byte
                                    address[(read_address+1)%4]<=read_address+1;
                                    enable_RW[(read_address+1)%4]<=1;
                                    read[(read_address+1)%4]<=1;
                                end
                                2'b10://4 bytes
                                begin
                                   //first byte
                                    address[read_address%4]<=read_address;
                                    enable_RW[read_address%4]<=1;
                                    read[read_address%4]<=1;
                                    
                                    //second byte
                                    address[(read_address+1)%4]<=read_address+1;
                                    enable_RW[(read_address+1)%4]<=1;
                                    read[(read_address+1)%4]<=1;                                
                                    
                                    //third byte
                                    address[(read_address+2)%4]<=read_address+2;
                                    enable_RW[(read_address+2)%4]<=1;
                                    read[(read_address+2)%4]<=1;                                
                                    
                                    //fourth byte
                                    address[(read_address+3)%4]<=read_address+3;
                                    enable_RW[(read_address+3)%4]<=1;
                                    read[(read_address+3)%4]<=1;                                
                                end
                                default://an error
                                begin
                                end
                                endcase
                            ram_controller_state<=WAIT_FOR_CLK_CYCLE;
                            
                        end
                        else
                        begin
                            if(read_address_read_pointer==1)
                            begin
                                read_address_read_pointer<=0;
                            end
                            else
                            begin
                                read_address_read_pointer<=read_address_read_pointer+1;
                            end
                            ram_controller_state<=RAM_CONTROLLER_IDLE;
                        end
                        
                    end
                    else
                    begin
                    
                        ram_controller_state<=WAIT_FOR_RREADY;
                    end
                end
                WAIT_FOR_WVALID:
                begin
                    if(no_of_transfers<=(write_len_queue[write_address_read_pointer]-1))
                    begin
                        if(wvalid==1)
                        begin
                            read[0]<=0;
                            read[1]<=0;
                            read[2]<=0;
                            read[3]<=0;
                            enable_RW[0]<=0;
                            enable_RW[1]<=0;
                            enable_RW[2]<=0;
                            enable_RW[3]<=0;
                            case(write_size_queue[write_address_read_pointer])
                                2'b00://one byte
                                begin
                                    address[write_address%4]<=write_address;
                                    enable_RW[write_address%4]<=1;
                                    read[write_address%4]<=0;
                                    data_in[write_address%4]<=WDATA[write_address%4];
                                    
                                end
                                2'b01://two bytes
                                begin
                                    //first byte
                                    address[write_address%4]<=write_address;
                                    enable_RW[write_address%4]<=1;
                                    read[write_address%4]<=0;
                                    data_in[write_address%4]<=WDATA[write_address%4];
                                    
                                    //second byte
                                    address[(write_address+1)%4]<=write_address+1;
                                    enable_RW[(write_address+1)%4]<=1;
                                    read[(write_address+1)%4]<=0;
                                    data_in[(write_address+1)%4]<=WDATA[(write_address+1)%4];
                                end
                                2'b10://4 bytes
                                begin
                                    //first byte
                                    address[write_address%4]<=write_address;
                                    enable_RW[write_address%4]<=1;
                                    read[write_address%4]<=0;
                                    data_in[write_address%4]<=WDATA[write_address%4];
                                    
                                    //second byte
                                    address[(write_address+1)%4]<=write_address+1;
                                    enable_RW[(write_address+1)%4]<=1;
                                    read[(write_address+1)%4]<=0;
                                    data_in[(write_address+1)%4]<=WDATA[(write_address+1)%4];                             
                                    
                                    //third byte
                                    address[(write_address+2)%4]<=write_address+2;
                                    enable_RW[(write_address+2)%4]<=1;
                                    read[(write_address+2)%4]<=0;
                                    data_in[(write_address+2)%4]<=WDATA[(write_address+2)%4]; 
                                    
                                    //fourth byte
                                    address[(write_address+3)%4]<=write_address+3;
                                    enable_RW[(write_address+3)%4]<=1;
                                    read[(write_address+3)%4]<=0;
                                    data_in[(write_address+3)%4]<=WDATA[(write_address+3)%4]; 
                                                                
                                end
                                default://an error
                                begin
                                end
                            endcase
                            write_address<=write_address+(2**(write_size_queue[write_address_read_pointer]));
                            no_of_transfers<=no_of_transfers+1;
                            ram_controller_state<=WAIT_FOR_WVALID;
                        end
                        else
                        begin
                            ram_controller_state<=WAIT_FOR_WVALID;
                        end
                    end
                    else
                    begin
                        bid<=write_id_queue[write_address_read_pointer];
                        bvalid=1;
                        bresp=2'b11;
                        ram_controller_state<=WAIT_FOR_BREADY;
                        wready=0;
                    end
                end
                WAIT_FOR_BREADY:
                begin
                    if(bready)
                    begin
                        no_of_transfers<=0;
                        bid<=write_id_queue[write_address_read_pointer];
                        bresp<=0;
                        bvalid<=0;
                        ram_controller_state<=RAM_CONTROLLER_IDLE;
                        if(write_address_read_pointer==1)
                        begin
                            write_address_read_pointer=0;
                        end
                        else
                        begin
                            write_address_read_pointer=write_address_read_pointer+1;
                        end
                    end
                    else
                    begin
                        ram_controller_state<=WAIT_FOR_BREADY;
                    end
                end
            endcase
        end
   end
   
   
   
endmodule
