module mod5_up_down_counter (
input i_clk,i_rst, i_en, i_up_down,
output reg [2:0] o_Q
);
    always @(posedge i_clk or posedge i_rst) begin
        if (i_rst) begin
            o_Q <= 3'b000;  
        end
        else if (i_en) begin
            if (i_up_down) begin
                if (o_Q == 3'b100)  
                    o_Q <= 3'b000; 
                else
                    o_Q <= o_Q + 1;  
            end 
else begin
                if (o_Q == 3'b000)  
                    o_Q <= 3'b100; 
                else
                    o_Q <= o_Q - 1;  
            end
        end
    end
endmodule
