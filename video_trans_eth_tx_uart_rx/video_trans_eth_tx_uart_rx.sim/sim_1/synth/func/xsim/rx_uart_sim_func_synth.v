// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Fri Apr 27 19:56:47 2018
// Host        : DESKTOP-B3RT09T running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file {C:/Users/KANG
//               Jian/Desktop/video_trans_pro/video_trans_eth_tx_uart_rx/video_trans_eth_tx_uart_rx.sim/sim_1/synth/func/xsim/rx_uart_sim_func_synth.v}
// Design      : rx_uart
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dbg_hub_CV
   (clk,
    sl_iport0_o,
    sl_oport0_i);
  input clk;
  output [0:36]sl_iport0_o;
  input [0:16]sl_oport0_i;


endmodule

module u_ila_0_CV
   (clk,
    SL_IPORT_I,
    SL_OPORT_O,
    probe0,
    probe1,
    probe2);
  input clk;
  input [0:36]SL_IPORT_I;
  output [0:16]SL_OPORT_O;
  input [0:7]probe0;
  input [0:0]probe1;
  input [0:0]probe2;


endmodule

module detect
   (\FSM_sequential_current_state_reg[0] ,
    rx_done_signal_reg,
    rx_in_IBUF,
    CLK,
    AR,
    bps_clk_total,
    out,
    rx_enable_signal_IBUF);
  output \FSM_sequential_current_state_reg[0] ;
  output rx_done_signal_reg;
  input rx_in_IBUF;
  input CLK;
  input [0:0]AR;
  input bps_clk_total;
  input [0:0]out;
  input rx_enable_signal_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_sequential_current_state_reg[0] ;
  wire bps_clk_total;
  wire high_to_low_signal_1;
  wire high_to_low_signal_2;
  wire [0:0]out;
  wire rx_done_signal_reg;
  wire rx_enable_signal_IBUF;
  wire rx_in_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44007400)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(bps_clk_total),
        .I1(out),
        .I2(high_to_low_signal_2),
        .I3(rx_enable_signal_IBUF),
        .I4(high_to_low_signal_1),
        .O(\FSM_sequential_current_state_reg[0] ));
  FDPE #(
    .INIT(1'b1)) 
    high_to_low_signal_1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rx_in_IBUF),
        .PRE(AR),
        .Q(high_to_low_signal_1));
  FDPE #(
    .INIT(1'b1)) 
    high_to_low_signal_2_reg
       (.C(CLK),
        .CE(1'b1),
        .D(high_to_low_signal_1),
        .PRE(AR),
        .Q(high_to_low_signal_2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rx_data[7]_i_12 
       (.I0(high_to_low_signal_2),
        .I1(rx_enable_signal_IBUF),
        .I2(high_to_low_signal_1),
        .O(rx_done_signal_reg));
endmodule

module rx_bps
   (rx_done_signal_reg,
    bps_clk_half,
    bps_clk_total,
    D,
    \FSM_sequential_current_state_reg[1] ,
    \FSM_sequential_current_state_reg[1]_0 ,
    out,
    rx_enable_signal_IBUF,
    count_signal,
    CLK,
    AR);
  output rx_done_signal_reg;
  output bps_clk_half;
  output bps_clk_total;
  output [0:0]D;
  output \FSM_sequential_current_state_reg[1] ;
  output \FSM_sequential_current_state_reg[1]_0 ;
  input [3:0]out;
  input rx_enable_signal_IBUF;
  input count_signal;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[2]_i_5_n_0 ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire bps_clk_half;
  wire bps_clk_total;
  wire count_signal;
  wire [14:0]counter;
  wire [14:1]counter0;
  wire [14:0]counter_0;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[14]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [3:0]out;
  wire rx_done_signal_reg;
  wire rx_enable_signal_IBUF;
  wire [3:1]\NLW_counter_reg[14]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_counter_reg[14]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h2F203F3F2F200000)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(\FSM_sequential_current_state_reg[1] ),
        .I1(out[2]),
        .I2(out[3]),
        .I3(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_current_state_reg[1]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(bps_clk_total),
        .I1(out[0]),
        .I2(rx_enable_signal_IBUF),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(counter[0]),
        .I3(counter[4]),
        .I4(counter[1]),
        .I5(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .O(bps_clk_total));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(counter[11]),
        .I1(counter[10]),
        .I2(counter[12]),
        .I3(counter[9]),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(counter[8]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(counter[5]),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[13]),
        .I3(counter[14]),
        .O(\FSM_sequential_current_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(bps_clk_half),
        .I1(rx_enable_signal_IBUF),
        .I2(out[0]),
        .O(\FSM_sequential_current_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(rx_enable_signal_IBUF),
        .I1(bps_clk_total),
        .I2(out[0]),
        .O(\FSM_sequential_current_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[0]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter[0]),
        .O(counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[10]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[10]),
        .O(counter_0[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[11]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[11]),
        .O(counter_0[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[12]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[12]),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[13]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[13]),
        .O(counter_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[14]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[14]),
        .O(counter_0[14]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[1]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[1]),
        .O(counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[2]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[2]),
        .O(counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[3]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[3]),
        .O(counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[4]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[4]),
        .O(counter_0[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[5]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[5]),
        .O(counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[6]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[6]),
        .O(counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[7]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[7]),
        .O(counter_0[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[8]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[8]),
        .O(counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \counter[9]_i_1 
       (.I0(bps_clk_total),
        .I1(count_signal),
        .I2(counter0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[12]),
        .Q(counter[12]));
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[14]),
        .Q(counter[14]));
  CARRY4 \counter_reg[14]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\NLW_counter_reg[14]_i_2_CO_UNCONNECTED [3:1],\counter_reg[14]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[14]_i_2_O_UNCONNECTED [3:2],counter0[14:13]}),
        .S({1'b0,1'b0,counter[14:13]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[4]),
        .Q(counter[4]));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[8]),
        .Q(counter[8]));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(counter_0[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \rx_data[7]_i_4 
       (.I0(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .I2(counter[4]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(\FSM_sequential_current_state[2]_i_5_n_0 ),
        .O(bps_clk_half));
  LUT5 #(
    .INIT(32'h4F0C7C0C)) 
    \rx_data[7]_i_9 
       (.I0(bps_clk_half),
        .I1(out[1]),
        .I2(out[0]),
        .I3(rx_enable_signal_IBUF),
        .I4(bps_clk_total),
        .O(rx_done_signal_reg));
endmodule

module rx_control
   (out,
    rx_done_signal_OBUF,
    count_signal,
    Q,
    CLK,
    \FSM_sequential_current_state_reg[1]_0 ,
    bps_clk_half,
    bps_clk_total,
    rx_enable_signal_IBUF,
    high_to_low_signal_2_reg,
    \FSM_sequential_current_state_reg[0]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[0]_2 ,
    rx_in_IBUF,
    AR,
    D);
  output [3:0]out;
  output rx_done_signal_OBUF;
  output count_signal;
  output [7:0]Q;
  input CLK;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input bps_clk_half;
  input bps_clk_total;
  input rx_enable_signal_IBUF;
  input high_to_low_signal_2_reg;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[0]_2 ;
  input rx_in_IBUF;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state[3]_i_1_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_2 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire [7:0]Q;
  wire bps_clk_half;
  wire bps_clk_total;
  wire count_signal;
  wire count_signal_i_1_n_0;
  wire high_to_low_signal_2_reg;
  wire [3:0]next_state;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire [7:1]p_0_in;
  wire [7:0]rx_data;
  wire \rx_data[7]_i_10_n_0 ;
  wire \rx_data[7]_i_11_n_0 ;
  wire \rx_data[7]_i_8_n_0 ;
  wire rx_done_signal_OBUF;
  wire rx_done_signal_i_1_n_0;
  wire rx_done_signal_i_2_n_0;
  wire rx_enable_signal_IBUF;
  wire rx_in_IBUF;

  LUT6 #(
    .INIT(64'h3B083F033B083C00)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state_reg[0]_0 ),
        .I1(out[3]),
        .I2(out[2]),
        .I3(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_current_state_reg[0]_1 ),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(out[0]),
        .I1(bps_clk_total),
        .I2(rx_enable_signal_IBUF),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000004CCC8000)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(out[1]),
        .I1(rx_enable_signal_IBUF),
        .I2(bps_clk_total),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[3]),
        .O(\FSM_sequential_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F000000C0A0C0A0)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(rx_enable_signal_IBUF),
        .I1(\FSM_sequential_current_state_reg[0]_0 ),
        .I2(out[3]),
        .I3(out[1]),
        .I4(\FSM_sequential_current_state_reg[0]_2 ),
        .I5(out[2]),
        .O(\FSM_sequential_current_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:0000,START_BIT:0001,DATA_BIT_1:0010,DATA_BIT_2:0011,DATA_BIT_3:0100,DATA_BIT_4:0101,DATA_BIT_5:0110,DATA_BIT_6:0111,DATA_BIT_7:1000,DATA_BIT_8:1001,STOP_BIT_1:1010,STOP_BIT_2:1011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(out[0]));
  (* FSM_ENCODED_STATES = "IDLE:0000,START_BIT:0001,DATA_BIT_1:0010,DATA_BIT_2:0011,DATA_BIT_3:0100,DATA_BIT_4:0101,DATA_BIT_5:0110,DATA_BIT_6:0111,DATA_BIT_7:1000,DATA_BIT_8:1001,STOP_BIT_1:1010,STOP_BIT_2:1011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(out[1]));
  (* FSM_ENCODED_STATES = "IDLE:0000,START_BIT:0001,DATA_BIT_1:0010,DATA_BIT_2:0011,DATA_BIT_3:0100,DATA_BIT_4:0101,DATA_BIT_5:0110,DATA_BIT_6:0111,DATA_BIT_7:1000,DATA_BIT_8:1001,STOP_BIT_1:1010,STOP_BIT_2:1011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_current_state[2]_i_1_n_0 ),
        .Q(out[2]));
  (* FSM_ENCODED_STATES = "IDLE:0000,START_BIT:0001,DATA_BIT_1:0010,DATA_BIT_2:0011,DATA_BIT_3:0100,DATA_BIT_4:0101,DATA_BIT_5:0110,DATA_BIT_6:0111,DATA_BIT_7:1000,DATA_BIT_8:1001,STOP_BIT_1:1010,STOP_BIT_2:1011" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_sequential_current_state[3]_i_1_n_0 ),
        .Q(out[3]));
  LUT5 #(
    .INIT(32'h0FFE0002)) 
    count_signal_i_1
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(next_state[3]),
        .I3(next_state[2]),
        .I4(count_signal),
        .O(count_signal_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    count_signal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(count_signal_i_1_n_0),
        .Q(count_signal),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAEAA0005)) 
    \rx_data[0]_i_1 
       (.I0(next_state[2]),
        .I1(bps_clk_half),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .I4(next_state[3]),
        .O(rx_data[0]));
  LUT5 #(
    .INIT(32'h888B8889)) 
    \rx_data[1]_i_1 
       (.I0(next_state[3]),
        .I1(next_state[2]),
        .I2(next_state[0]),
        .I3(next_state[1]),
        .I4(bps_clk_half),
        .O(rx_data[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rx_data[1]_i_2 
       (.I0(rx_in_IBUF),
        .I1(next_state[3]),
        .I2(next_state[2]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hEAAA0005)) 
    \rx_data[2]_i_1 
       (.I0(next_state[3]),
        .I1(bps_clk_half),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .I4(next_state[2]),
        .O(rx_data[2]));
  LUT5 #(
    .INIT(32'hBAAA0011)) 
    \rx_data[3]_i_1 
       (.I0(next_state[3]),
        .I1(next_state[0]),
        .I2(bps_clk_half),
        .I3(next_state[1]),
        .I4(next_state[2]),
        .O(rx_data[3]));
  LUT5 #(
    .INIT(32'hAEAA0005)) 
    \rx_data[4]_i_1 
       (.I0(next_state[3]),
        .I1(bps_clk_half),
        .I2(next_state[1]),
        .I3(next_state[0]),
        .I4(next_state[2]),
        .O(rx_data[4]));
  LUT5 #(
    .INIT(32'h888B8889)) 
    \rx_data[5]_i_1 
       (.I0(next_state[2]),
        .I1(next_state[3]),
        .I2(next_state[0]),
        .I3(next_state[1]),
        .I4(bps_clk_half),
        .O(rx_data[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rx_data[5]_i_2 
       (.I0(rx_in_IBUF),
        .I1(next_state[2]),
        .I2(next_state[3]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hFF000083)) 
    \rx_data[6]_i_1 
       (.I0(bps_clk_half),
        .I1(next_state[1]),
        .I2(next_state[0]),
        .I3(next_state[2]),
        .I4(next_state[3]),
        .O(rx_data[6]));
  LUT5 #(
    .INIT(32'hFF000045)) 
    \rx_data[7]_i_1 
       (.I0(next_state[0]),
        .I1(bps_clk_half),
        .I2(next_state[1]),
        .I3(next_state[2]),
        .I4(next_state[3]),
        .O(rx_data[7]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \rx_data[7]_i_10 
       (.I0(out[1]),
        .I1(bps_clk_total),
        .I2(rx_enable_signal_IBUF),
        .I3(out[0]),
        .I4(out[2]),
        .O(\rx_data[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h7F30)) 
    \rx_data[7]_i_11 
       (.I0(bps_clk_half),
        .I1(out[0]),
        .I2(out[1]),
        .I3(rx_enable_signal_IBUF),
        .O(\rx_data[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \rx_data[7]_i_2 
       (.I0(rx_in_IBUF),
        .I1(next_state[1]),
        .I2(next_state[3]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h4F700000F0F0C0C0)) 
    \rx_data[7]_i_5 
       (.I0(bps_clk_half),
        .I1(out[3]),
        .I2(out[1]),
        .I3(bps_clk_total),
        .I4(rx_enable_signal_IBUF),
        .I5(out[0]),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h0000000070F08000)) 
    \rx_data[7]_i_6 
       (.I0(out[1]),
        .I1(bps_clk_total),
        .I2(rx_enable_signal_IBUF),
        .I3(out[0]),
        .I4(out[2]),
        .I5(out[3]),
        .O(next_state[2]));
  LUT6 #(
    .INIT(64'h00F0F11100F0E000)) 
    \rx_data[7]_i_8 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(rx_enable_signal_IBUF),
        .I3(bps_clk_total),
        .I4(out[0]),
        .I5(high_to_low_signal_2_reg),
        .O(\rx_data[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(rx_data[0]),
        .D(p_0_in[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(rx_data[1]),
        .D(p_0_in[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(rx_data[2]),
        .D(p_0_in[5]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(rx_data[3]),
        .D(p_0_in[5]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(rx_data[4]),
        .D(p_0_in[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(rx_data[5]),
        .D(p_0_in[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(rx_data[6]),
        .D(p_0_in[7]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(rx_data[7]),
        .D(p_0_in[7]),
        .Q(Q[7]),
        .R(1'b0));
  MUXF7 \rx_data_reg[7]_i_3 
       (.I0(\rx_data[7]_i_8_n_0 ),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .O(next_state[0]),
        .S(out[3]));
  MUXF7 \rx_data_reg[7]_i_7 
       (.I0(\rx_data[7]_i_10_n_0 ),
        .I1(\rx_data[7]_i_11_n_0 ),
        .O(next_state[3]),
        .S(out[3]));
  LUT4 #(
    .INIT(16'hCC89)) 
    rx_done_signal_i_1
       (.I0(next_state[2]),
        .I1(next_state[3]),
        .I2(next_state[0]),
        .I3(next_state[1]),
        .O(rx_done_signal_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    rx_done_signal_i_2
       (.I0(next_state[0]),
        .I1(next_state[3]),
        .I2(next_state[2]),
        .O(rx_done_signal_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_done_signal_reg
       (.C(CLK),
        .CE(rx_done_signal_i_1_n_0),
        .D(rx_done_signal_i_2_n_0),
        .Q(rx_done_signal_OBUF),
        .R(1'b0));
endmodule

(* NotValidForBitStream *)
module rx_uart
   (clk,
    rst,
    rx_in,
    rx_enable_signal,
    rx_done_signal,
    rx_data);
  input clk;
  input rst;
  input rx_in;
  input rx_enable_signal;
  output rx_done_signal;
  output [7:0]rx_data;

  wire bps_clk_half;
  wire bps_clk_total;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire count_signal;
  wire dectect_inst_n_0;
  wire dectect_inst_n_1;
  wire rst;
  wire rst_IBUF;
  wire rx_bps_inst_n_0;
  wire rx_bps_inst_n_3;
  wire rx_bps_inst_n_4;
  wire rx_bps_inst_n_5;
  wire rx_control_inst_n_0;
  wire rx_control_inst_n_1;
  wire rx_control_inst_n_2;
  wire rx_control_inst_n_3;
  wire [7:0]rx_data;
  wire [7:0]rx_data_OBUF;
  wire rx_done_signal;
  wire rx_done_signal_OBUF;
  wire rx_enable_signal;
  wire rx_enable_signal_IBUF;
  wire rx_in;
  wire rx_in_IBUF;
  wire [0:36]sl_iport0_o_0;
  wire [0:16]sl_oport0_i_0;
  wire NLW_dbg_hub_clk_UNCONNECTED;
  wire NLW_u_ila_0_clk_UNCONNECTED;
  wire [0:7]NLW_u_ila_0_probe0_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe1_UNCONNECTED;
  wire [0:0]NLW_u_ila_0_probe2_UNCONNECTED;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* DEBUG_PORT_clk = "" *) 
  (* IS_DEBUG_CORE *) 
  dbg_hub_CV dbg_hub
       (.clk(NLW_dbg_hub_clk_UNCONNECTED),
        .sl_iport0_o(sl_iport0_o_0),
        .sl_oport0_i(sl_oport0_i_0));
  detect dectect_inst
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .\FSM_sequential_current_state_reg[0] (dectect_inst_n_0),
        .bps_clk_total(bps_clk_total),
        .out(rx_control_inst_n_3),
        .rx_done_signal_reg(dectect_inst_n_1),
        .rx_enable_signal_IBUF(rx_enable_signal_IBUF),
        .rx_in_IBUF(rx_in_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  rx_bps rx_bps_inst
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(rx_bps_inst_n_3),
        .\FSM_sequential_current_state_reg[1] (rx_bps_inst_n_4),
        .\FSM_sequential_current_state_reg[1]_0 (rx_bps_inst_n_5),
        .bps_clk_half(bps_clk_half),
        .bps_clk_total(bps_clk_total),
        .count_signal(count_signal),
        .out({rx_control_inst_n_0,rx_control_inst_n_1,rx_control_inst_n_2,rx_control_inst_n_3}),
        .rx_done_signal_reg(rx_bps_inst_n_0),
        .rx_enable_signal_IBUF(rx_enable_signal_IBUF));
  rx_control rx_control_inst
       (.AR(rst_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(rx_bps_inst_n_3),
        .\FSM_sequential_current_state_reg[0]_0 (rx_bps_inst_n_4),
        .\FSM_sequential_current_state_reg[0]_1 (dectect_inst_n_0),
        .\FSM_sequential_current_state_reg[0]_2 (rx_bps_inst_n_5),
        .\FSM_sequential_current_state_reg[1]_0 (rx_bps_inst_n_0),
        .Q(rx_data_OBUF),
        .bps_clk_half(bps_clk_half),
        .bps_clk_total(bps_clk_total),
        .count_signal(count_signal),
        .high_to_low_signal_2_reg(dectect_inst_n_1),
        .out({rx_control_inst_n_0,rx_control_inst_n_1,rx_control_inst_n_2,rx_control_inst_n_3}),
        .rx_done_signal_OBUF(rx_done_signal_OBUF),
        .rx_enable_signal_IBUF(rx_enable_signal_IBUF),
        .rx_in_IBUF(rx_in_IBUF));
  OBUF \rx_data_OBUF[0]_inst 
       (.I(rx_data_OBUF[0]),
        .O(rx_data[0]));
  OBUF \rx_data_OBUF[1]_inst 
       (.I(rx_data_OBUF[1]),
        .O(rx_data[1]));
  OBUF \rx_data_OBUF[2]_inst 
       (.I(rx_data_OBUF[2]),
        .O(rx_data[2]));
  OBUF \rx_data_OBUF[3]_inst 
       (.I(rx_data_OBUF[3]),
        .O(rx_data[3]));
  OBUF \rx_data_OBUF[4]_inst 
       (.I(rx_data_OBUF[4]),
        .O(rx_data[4]));
  OBUF \rx_data_OBUF[5]_inst 
       (.I(rx_data_OBUF[5]),
        .O(rx_data[5]));
  OBUF \rx_data_OBUF[6]_inst 
       (.I(rx_data_OBUF[6]),
        .O(rx_data[6]));
  OBUF \rx_data_OBUF[7]_inst 
       (.I(rx_data_OBUF[7]),
        .O(rx_data[7]));
  OBUF rx_done_signal_OBUF_inst
       (.I(rx_done_signal_OBUF),
        .O(rx_done_signal));
  IBUF rx_enable_signal_IBUF_inst
       (.I(rx_enable_signal),
        .O(rx_enable_signal_IBUF));
  IBUF rx_in_IBUF_inst
       (.I(rx_in),
        .O(rx_in_IBUF));
  (* DEBUG_PORT_clk = "" *) 
  (* DEBUG_PORT_probe0 = "" *) 
  (* DEBUG_PORT_probe1 = "" *) 
  (* DEBUG_PORT_probe2 = "" *) 
  (* IS_DEBUG_CORE *) 
  u_ila_0_CV u_ila_0
       (.SL_IPORT_I(sl_iport0_o_0),
        .SL_OPORT_O(sl_oport0_i_0),
        .clk(NLW_u_ila_0_clk_UNCONNECTED),
        .probe0(NLW_u_ila_0_probe0_UNCONNECTED[0:7]),
        .probe1(NLW_u_ila_0_probe1_UNCONNECTED[0]),
        .probe2(NLW_u_ila_0_probe2_UNCONNECTED[0]));
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
