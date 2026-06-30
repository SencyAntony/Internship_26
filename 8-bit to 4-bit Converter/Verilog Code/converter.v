`timescale 1ns / 1ps
module converter (
    input clk,        
    input sel,
    input [7:0] din,
    output reg [3:0] dout
);
    always @(posedge clk) begin
        if(sel)
            dout <= din[7:4];
        else
            dout <= din[3:0];
    end
endmodule
