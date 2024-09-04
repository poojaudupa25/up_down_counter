/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : T-2022.03-SP5
// Date      : Wed Sep  4 12:23:02 2024
/////////////////////////////////////////////////////////////


module mod5_up_down_counter ( i_clk, i_rst, i_en, i_up_down, o_Q );
  output [2:0] o_Q;
  input i_clk, i_rst, i_en, i_up_down;
  wire   n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34;

  sky130_fd_sc_hd__dfrtp_1 \o_Q_reg[0]  ( .D(n19), .CLK(i_clk), .RESET_B(n16), 
        .Q(o_Q[0]) );
  sky130_fd_sc_hd__dfrtp_1 \o_Q_reg[2]  ( .D(n18), .CLK(i_clk), .RESET_B(n16), 
        .Q(o_Q[2]) );
  sky130_fd_sc_hd__dfrtp_2 \o_Q_reg[1]  ( .D(n17), .CLK(i_clk), .RESET_B(n16), 
        .Q(o_Q[1]) );
  sky130_fd_sc_hd__clkinv_1 U22 ( .A(i_up_down), .Y(n29) );
  sky130_fd_sc_hd__clkinv_1 U23 ( .A(i_en), .Y(n33) );
  sky130_fd_sc_hd__clkinv_1 U24 ( .A(i_rst), .Y(n16) );
  sky130_fd_sc_hd__clkinv_1 U25 ( .A(o_Q[0]), .Y(n30) );
  sky130_fd_sc_hd__nand2_1 U26 ( .A(o_Q[2]), .B(n29), .Y(n26) );
  sky130_fd_sc_hd__o21ai_1 U27 ( .A1(o_Q[2]), .A2(n29), .B1(n26), .Y(n20) );
  sky130_fd_sc_hd__o21ai_1 U28 ( .A1(o_Q[1]), .A2(n20), .B1(n30), .Y(n21) );
  sky130_fd_sc_hd__o22ai_1 U29 ( .A1(i_en), .A2(n30), .B1(n33), .B2(n21), .Y(
        n19) );
  sky130_fd_sc_hd__nor2_1 U30 ( .A(o_Q[1]), .B(o_Q[0]), .Y(n22) );
  sky130_fd_sc_hd__nor2_1 U31 ( .A(n30), .B(n29), .Y(n28) );
  sky130_fd_sc_hd__o22ai_1 U32 ( .A1(n22), .A2(n28), .B1(o_Q[1]), .B2(n29), 
        .Y(n25) );
  sky130_fd_sc_hd__a31oi_1 U33 ( .A1(o_Q[0]), .A2(o_Q[1]), .A3(i_up_down), 
        .B1(n22), .Y(n23) );
  sky130_fd_sc_hd__o21ai_1 U34 ( .A1(n33), .A2(n23), .B1(o_Q[2]), .Y(n24) );
  sky130_fd_sc_hd__o31ai_1 U35 ( .A1(o_Q[2]), .A2(n33), .A3(n25), .B1(n24), 
        .Y(n18) );
  sky130_fd_sc_hd__nor2_1 U36 ( .A(n26), .B(o_Q[0]), .Y(n27) );
  sky130_fd_sc_hd__o21bai_1 U37 ( .A1(n28), .A2(n27), .B1_N(o_Q[1]), .Y(n34)
         );
  sky130_fd_sc_hd__a21oi_1 U38 ( .A1(n30), .A2(n29), .B1(n28), .Y(n31) );
  sky130_fd_sc_hd__o21ai_1 U39 ( .A1(n31), .A2(n33), .B1(o_Q[1]), .Y(n32) );
  sky130_fd_sc_hd__o21ai_1 U40 ( .A1(n34), .A2(n33), .B1(n32), .Y(n17) );
endmodule

