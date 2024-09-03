module tb_mod5_up_down_counter;
    reg clk;
    reg rst;
    reg en;
    reg up_down;
    wire [2:0] Q;

    mod5_up_down_counter uut ( .i_clk(clk), .i_rst(rst),  .i_en(en),  .i_up_down(up_down),  .o_Q(Q));
    always #5 clk = ~clk;
    initial  begin
        clk = 0;  rst = 1; en = 0; up_down = 0;
        #10 rst = 0;
        #10 en = 1; up_down = 0;          
        #50;
        #10 up_down = 1;
        #40;
        #10 $finish;
    end
endmodule
