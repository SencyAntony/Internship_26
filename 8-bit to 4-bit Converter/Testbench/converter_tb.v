`timescale 1ns / 1ps
module coverter_tb;
    reg clk;
    reg sel;
    reg [7:0] din;
    wire [3:0] dout;
  
    converter uut (
        .clk(clk),
        .sel(sel),
        .din(din),
        .dout(dout)
    );
    initial clk = 0;
    always #5 clk = ~clk;   
initial begin
    din = 8'b10110100;
    sel = 1;
    #10;

    sel = 0;
    #10;

    din = 8'b11001010;
    sel = 1;
    #10;

    sel = 0;
    #10;

    $finish;
end
endmodule
