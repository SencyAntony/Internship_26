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
        $display("Test1 | sel=%b | din=%b | dout=%b | expected=%b", sel, din, dout, din[3:0]);
        sel = 0;
        #10;
        $display("Test2 | sel=%b | din=%b | dout=%b | expected=%b", sel, din, dout, din[7:4]);

       
        din = 8'b11001010;
        sel = 1;
        #10;
        $display("Test3 | sel=%b | din=%b | dout=%b | expected=%b", sel, din, dout, din[3:0]);
        sel = 0;
        #10;
        $display("Test4 | sel=%b | din=%b | dout=%b | expected=%b", sel, din, dout, din[7:4]);
      
        $finish;
    end
endmodule
