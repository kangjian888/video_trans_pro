// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr 27 13:58:56 2018
// Host        : DESKTOP-B3RT09T running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/KANG
//               Jian/Desktop/video_trans_pro/video_trans_eth_tx_uart_rx/video_trans_eth_tx_uart_rx.sim/sim_1/synth/func/xsim/ethernet_tx_tb_func_synth.v}
// Design      : ethernet_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i,
    sl_iport1_o,
    sl_oport1_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;
  output [0:36]sl_iport1_o;
  input [0:16]sl_oport1_i;


endmodule

module u_ila_0_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1);
  input clk;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:7]probe0;
  input [0:0]probe1;


endmodule

module u_ila_1_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4);
  input clk;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:7]probe0;
  input [0:3]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;


endmodule

(* IDLE = "2'b00" *) (* SEND_DATA = "2'b11" *) (* START = "2'b01" *) 
(* NotValidForBitStream *)
module ethernet_tx
   (clk,
    datain,
    rst,
    data_request,
    send_enale,
    tx_ctrl,
    phy_txd);
  input clk;
  input [7:0]datain;
  input rst;
  output data_request;
  input send_enale;
  output tx_ctrl;
  output [3:0]phy_txd;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [10:0]cnt_reg;
  wire \cnt_reg[0]_i_1_n_0 ;
  wire \cnt_reg[10]_i_1_n_0 ;
  wire \cnt_reg[10]_i_2_n_0 ;
  wire \cnt_reg[10]_i_3_n_0 ;
  wire \cnt_reg[10]_i_4_n_0 ;
  wire \cnt_reg[1]_i_1_n_0 ;
  wire \cnt_reg[2]_i_1_n_0 ;
  wire \cnt_reg[3]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[5]_i_1_n_0 ;
  wire \cnt_reg[5]_i_2_n_0 ;
  wire \cnt_reg[6]_i_1_n_0 ;
  wire \cnt_reg[7]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[9]_i_1_n_0 ;
  wire \cnt_reg[9]_i_2_n_0 ;
  wire data_request;
  wire data_request_OBUF;
  wire [7:0]datain;
  wire [7:0]datain_IBUF;
  wire [7:0]datain_reg;
  wire \datain_reg[7]_i_1_n_0 ;
  wire flag_reg;
  wire flag_reg_i_1_n_0;
  wire [3:0]phy_txd;
  wire [3:0]phy_txd0;
  wire [3:0]phy_txd_OBUF;
  wire \phy_txd_OBUF[3]_inst_i_2_n_0 ;
  wire \phy_txd_OBUF[3]_inst_i_3_n_0 ;
  wire rst;
  wire rst_IBUF;
  wire send_enale;
  wire send_enale_IBUF;
  wire [0:36]sl_iport0_o_0;
  wire [0:36]sl_iport1_o_1;
  wire [0:16]sl_oport0_i_0;
  wire [0:16]sl_oport1_i_1;
  wire [1:0]state_reg;
  wire \state_reg[0]_i_1_n_0 ;
  wire \state_reg[1]_i_1_n_0 ;
  wire \state_reg[1]_i_2_n_0 ;
  wire \state_reg[1]_i_3_n_0 ;
  wire \state_reg[1]_i_4_n_0 ;
  wire \state_reg[1]_i_5_n_0 ;
  wire \state_reg[1]_i_6_n_0 ;
  wire tx_ctrl;
  wire tx_ctrl_OBUF;
  wire NLW_dbg_hub_clk_UNCONNECTED;
  wire NLW_u_ila_0_clk_UNCONNECTED;
  wire [0:7]NLW_u_ila_0_probe0_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe1_UNCONNECTED;
  wire NLW_u_ila_1_clk_UNCONNECTED;
  wire [0:7]NLW_u_ila_1_probe0_UNCONNECTED;
  wire [0:3]NLW_u_ila_1_probe1_UNCONNECTED;
  wire [0:0]NLW_u_ila_1_probe2_UNCONNECTED;
  wire [0:0]NLW_u_ila_1_probe3_UNCONNECTED;
  wire [0:0]NLW_u_ila_1_probe4_UNCONNECTED;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_reg[0]_i_1 
       (.I0(state_reg[0]),
        .I1(cnt_reg[0]),
        .O(\cnt_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2020FF0F)) 
    \cnt_reg[10]_i_1 
       (.I0(flag_reg),
        .I1(\cnt_reg[10]_i_3_n_0 ),
        .I2(state_reg[0]),
        .I3(send_enale_IBUF),
        .I4(state_reg[1]),
        .O(\cnt_reg[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_reg[10]_i_2 
       (.I0(state_reg[0]),
        .I1(\cnt_reg[10]_i_4_n_0 ),
        .I2(cnt_reg[9]),
        .I3(cnt_reg[10]),
        .O(\cnt_reg[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \cnt_reg[10]_i_3 
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[8]),
        .I3(\state_reg[1]_i_5_n_0 ),
        .I4(\state_reg[1]_i_4_n_0 ),
        .O(\cnt_reg[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \cnt_reg[10]_i_4 
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[7]),
        .I2(\cnt_reg[9]_i_2_n_0 ),
        .I3(cnt_reg[6]),
        .O(\cnt_reg[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \cnt_reg[1]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(state_reg[0]),
        .O(\cnt_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \cnt_reg[2]_i_1 
       (.I0(state_reg[0]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[1]),
        .I3(cnt_reg[2]),
        .O(\cnt_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F800000)) 
    \cnt_reg[3]_i_1 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(state_reg[0]),
        .I5(\state_reg[1]_i_3_n_0 ),
        .O(\cnt_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \cnt_reg[4]_i_1 
       (.I0(state_reg[0]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[4]),
        .O(\cnt_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000DF2000000000)) 
    \cnt_reg[5]_i_1 
       (.I0(cnt_reg[4]),
        .I1(\cnt_reg[5]_i_2_n_0 ),
        .I2(cnt_reg[3]),
        .I3(cnt_reg[5]),
        .I4(\state_reg[1]_i_3_n_0 ),
        .I5(state_reg[0]),
        .O(\cnt_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \cnt_reg[5]_i_2 
       (.I0(cnt_reg[1]),
        .I1(cnt_reg[0]),
        .I2(cnt_reg[2]),
        .O(\cnt_reg[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \cnt_reg[6]_i_1 
       (.I0(state_reg[0]),
        .I1(\cnt_reg[9]_i_2_n_0 ),
        .I2(cnt_reg[6]),
        .O(\cnt_reg[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \cnt_reg[7]_i_1 
       (.I0(state_reg[0]),
        .I1(\cnt_reg[9]_i_2_n_0 ),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[7]),
        .O(\cnt_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \cnt_reg[8]_i_1 
       (.I0(state_reg[0]),
        .I1(cnt_reg[6]),
        .I2(\cnt_reg[9]_i_2_n_0 ),
        .I3(cnt_reg[7]),
        .I4(cnt_reg[8]),
        .O(\cnt_reg[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \cnt_reg[9]_i_1 
       (.I0(state_reg[0]),
        .I1(cnt_reg[8]),
        .I2(cnt_reg[7]),
        .I3(\cnt_reg[9]_i_2_n_0 ),
        .I4(cnt_reg[6]),
        .I5(cnt_reg[9]),
        .O(\cnt_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cnt_reg[9]_i_2 
       (.I0(cnt_reg[4]),
        .I1(cnt_reg[2]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[1]),
        .I4(cnt_reg[3]),
        .I5(cnt_reg[5]),
        .O(\cnt_reg[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[0]_i_1_n_0 ),
        .Q(cnt_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[10]_i_2_n_0 ),
        .Q(cnt_reg[10]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[1]_i_1_n_0 ),
        .Q(cnt_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[2]_i_1_n_0 ),
        .Q(cnt_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[3]_i_1_n_0 ),
        .Q(cnt_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[4]_i_1_n_0 ),
        .Q(cnt_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[5]_i_1_n_0 ),
        .Q(cnt_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[6]_i_1_n_0 ),
        .Q(cnt_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[7]_i_1_n_0 ),
        .Q(cnt_reg[7]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[8]_i_1_n_0 ),
        .Q(cnt_reg[8]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\cnt_reg[10]_i_1_n_0 ),
        .D(\cnt_reg[9]_i_1_n_0 ),
        .Q(cnt_reg[9]),
        .R(rst_IBUF));
  OBUF data_request_OBUF_inst
       (.I(data_request_OBUF),
        .O(data_request));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    data_request_OBUF_inst_i_1
       (.I0(state_reg[1]),
        .I1(state_reg[0]),
        .I2(flag_reg),
        .O(data_request_OBUF));
  IBUF \datain_IBUF[0]_inst 
       (.I(datain[0]),
        .O(datain_IBUF[0]));
  IBUF \datain_IBUF[1]_inst 
       (.I(datain[1]),
        .O(datain_IBUF[1]));
  IBUF \datain_IBUF[2]_inst 
       (.I(datain[2]),
        .O(datain_IBUF[2]));
  IBUF \datain_IBUF[3]_inst 
       (.I(datain[3]),
        .O(datain_IBUF[3]));
  IBUF \datain_IBUF[4]_inst 
       (.I(datain[4]),
        .O(datain_IBUF[4]));
  IBUF \datain_IBUF[5]_inst 
       (.I(datain[5]),
        .O(datain_IBUF[5]));
  IBUF \datain_IBUF[6]_inst 
       (.I(datain[6]),
        .O(datain_IBUF[6]));
  IBUF \datain_IBUF[7]_inst 
       (.I(datain[7]),
        .O(datain_IBUF[7]));
  LUT4 #(
    .INIT(16'h08AA)) 
    \datain_reg[7]_i_1 
       (.I0(state_reg[0]),
        .I1(flag_reg),
        .I2(\cnt_reg[10]_i_3_n_0 ),
        .I3(state_reg[1]),
        .O(\datain_reg[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[0]),
        .Q(datain_reg[0]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[1]),
        .Q(datain_reg[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[2]),
        .Q(datain_reg[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[3]),
        .Q(datain_reg[3]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[4]),
        .Q(datain_reg[4]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[5]),
        .Q(datain_reg[5]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[6]),
        .Q(datain_reg[6]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \datain_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\datain_reg[7]_i_1_n_0 ),
        .D(datain_IBUF[7]),
        .Q(datain_reg[7]),
        .R(rst_IBUF));
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(NLW_dbg_hub_clk_UNCONNECTED),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_iport1_o(sl_iport1_o_1),
        .sl_oport0_i(sl_oport0_i_0),
        .sl_oport1_i(sl_oport1_i_1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    flag_reg_i_1
       (.I0(flag_reg),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(rst_IBUF),
        .O(flag_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(flag_reg_i_1_n_0),
        .Q(flag_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000048849AFFFF)) 
    g0_b0
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(phy_txd0[0]));
  LUT6 #(
    .INIT(64'h000000D56A720000)) 
    g0_b1
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(phy_txd0[1]));
  LUT6 #(
    .INIT(64'h0000005D0344FFFF)) 
    g0_b2
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(phy_txd0[2]));
  LUT6 #(
    .INIT(64'h00000094434C8000)) 
    g0_b3
       (.I0(cnt_reg[0]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[3]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[5]),
        .O(phy_txd0[3]));
  OBUF \phy_txd_OBUF[0]_inst 
       (.I(phy_txd_OBUF[0]),
        .O(phy_txd[0]));
  LUT6 #(
    .INIT(64'hF8F8F8888888F888)) 
    \phy_txd_OBUF[0]_inst_i_1 
       (.I0(\phy_txd_OBUF[3]_inst_i_2_n_0 ),
        .I1(phy_txd0[0]),
        .I2(\phy_txd_OBUF[3]_inst_i_3_n_0 ),
        .I3(datain_reg[0]),
        .I4(flag_reg),
        .I5(datain_reg[4]),
        .O(phy_txd_OBUF[0]));
  OBUF \phy_txd_OBUF[1]_inst 
       (.I(phy_txd_OBUF[1]),
        .O(phy_txd[1]));
  LUT6 #(
    .INIT(64'hF8F8F8888888F888)) 
    \phy_txd_OBUF[1]_inst_i_1 
       (.I0(\phy_txd_OBUF[3]_inst_i_2_n_0 ),
        .I1(phy_txd0[1]),
        .I2(\phy_txd_OBUF[3]_inst_i_3_n_0 ),
        .I3(datain_reg[1]),
        .I4(flag_reg),
        .I5(datain_reg[5]),
        .O(phy_txd_OBUF[1]));
  OBUF \phy_txd_OBUF[2]_inst 
       (.I(phy_txd_OBUF[2]),
        .O(phy_txd[2]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \phy_txd_OBUF[2]_inst_i_1 
       (.I0(\phy_txd_OBUF[3]_inst_i_2_n_0 ),
        .I1(phy_txd0[2]),
        .I2(datain_reg[6]),
        .I3(flag_reg),
        .I4(datain_reg[2]),
        .I5(\phy_txd_OBUF[3]_inst_i_3_n_0 ),
        .O(phy_txd_OBUF[2]));
  OBUF \phy_txd_OBUF[3]_inst 
       (.I(phy_txd_OBUF[3]),
        .O(phy_txd[3]));
  LUT6 #(
    .INIT(64'hF8F8F8888888F888)) 
    \phy_txd_OBUF[3]_inst_i_1 
       (.I0(\phy_txd_OBUF[3]_inst_i_2_n_0 ),
        .I1(phy_txd0[3]),
        .I2(\phy_txd_OBUF[3]_inst_i_3_n_0 ),
        .I3(datain_reg[3]),
        .I4(flag_reg),
        .I5(datain_reg[7]),
        .O(phy_txd_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \phy_txd_OBUF[3]_inst_i_2 
       (.I0(state_reg[1]),
        .I1(send_enale_IBUF),
        .I2(state_reg[0]),
        .O(\phy_txd_OBUF[3]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \phy_txd_OBUF[3]_inst_i_3 
       (.I0(state_reg[0]),
        .I1(state_reg[1]),
        .O(\phy_txd_OBUF[3]_inst_i_3_n_0 ));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF send_enale_IBUF_inst
       (.I(send_enale),
        .O(send_enale_IBUF));
  LUT6 #(
    .INIT(64'h000000000A0ACA0A)) 
    \state_reg[0]_i_1 
       (.I0(send_enale_IBUF),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\state_reg[1]_i_2_n_0 ),
        .I4(\state_reg[1]_i_3_n_0 ),
        .I5(rst_IBUF),
        .O(\state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000003838F030)) 
    \state_reg[1]_i_1 
       (.I0(send_enale_IBUF),
        .I1(state_reg[0]),
        .I2(state_reg[1]),
        .I3(\state_reg[1]_i_2_n_0 ),
        .I4(\state_reg[1]_i_3_n_0 ),
        .I5(rst_IBUF),
        .O(\state_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \state_reg[1]_i_2 
       (.I0(flag_reg),
        .I1(\state_reg[1]_i_4_n_0 ),
        .I2(\state_reg[1]_i_5_n_0 ),
        .I3(cnt_reg[8]),
        .I4(cnt_reg[4]),
        .I5(cnt_reg[10]),
        .O(\state_reg[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \state_reg[1]_i_3 
       (.I0(\state_reg[1]_i_6_n_0 ),
        .I1(state_reg[1]),
        .I2(cnt_reg[5]),
        .I3(cnt_reg[8]),
        .I4(\cnt_reg[5]_i_2_n_0 ),
        .O(\state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \state_reg[1]_i_4 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[1]),
        .I2(cnt_reg[2]),
        .I3(cnt_reg[9]),
        .O(\state_reg[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state_reg[1]_i_5 
       (.I0(cnt_reg[7]),
        .I1(cnt_reg[3]),
        .I2(cnt_reg[0]),
        .I3(cnt_reg[5]),
        .O(\state_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \state_reg[1]_i_6 
       (.I0(cnt_reg[6]),
        .I1(cnt_reg[9]),
        .I2(cnt_reg[10]),
        .I3(cnt_reg[4]),
        .I4(cnt_reg[7]),
        .I5(cnt_reg[3]),
        .O(\state_reg[1]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[0]_i_1_n_0 ),
        .Q(state_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_reg[1]_i_1_n_0 ),
        .Q(state_reg[1]),
        .R(1'b0));
  OBUF tx_ctrl_OBUF_inst
       (.I(tx_ctrl_OBUF),
        .O(tx_ctrl));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    tx_ctrl_OBUF_inst_i_1
       (.I0(state_reg[1]),
        .I1(send_enale_IBUF),
        .I2(state_reg[0]),
        .O(tx_ctrl_OBUF));
  (* DEBUG_PORT_clk = "" *) 
  (* DEBUG_PORT_probe0 = "" *) 
  (* DEBUG_PORT_probe1 = "" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(NLW_u_ila_0_clk_UNCONNECTED),
        .probe0(NLW_u_ila_0_probe0_UNCONNECTED[0:7]),
        .probe1(NLW_u_ila_0_probe1_UNCONNECTED[0]));
  (* DEBUG_PORT_clk = "" *) 
  (* DEBUG_PORT_probe0 = "" *) 
  (* DEBUG_PORT_probe1 = "" *) 
  (* DEBUG_PORT_probe2 = "" *) 
  (* DEBUG_PORT_probe3 = "" *) 
  (* DEBUG_PORT_probe4 = "" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_1_CV u_ila_1
       (.SL_IPORT_I(sl_iport1_o_1),
        .SL_OPORT_O(sl_oport1_i_1),
        .clk(NLW_u_ila_1_clk_UNCONNECTED),
        .probe0(NLW_u_ila_1_probe0_UNCONNECTED[0:7]),
        .probe1(NLW_u_ila_1_probe1_UNCONNECTED[0:3]),
        .probe2(NLW_u_ila_1_probe2_UNCONNECTED[0]),
        .probe3(NLW_u_ila_1_probe3_UNCONNECTED[0]),
        .probe4(NLW_u_ila_1_probe4_UNCONNECTED[0]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
