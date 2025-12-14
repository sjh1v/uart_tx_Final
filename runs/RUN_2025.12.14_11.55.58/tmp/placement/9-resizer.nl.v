module uart_tx (clk,
    rst_n,
    tx_busy,
    tx_out,
    tx_start,
    data_in);
 input clk;
 input rst_n;
 output tx_busy;
 output tx_out;
 input tx_start;
 input [7:0] data_in;

 wire _000_;
 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire \bit_idx[0] ;
 wire \bit_idx[1] ;
 wire \bit_idx[2] ;
 wire \clk_cnt[0] ;
 wire \clk_cnt[10] ;
 wire \clk_cnt[11] ;
 wire \clk_cnt[12] ;
 wire \clk_cnt[13] ;
 wire \clk_cnt[14] ;
 wire \clk_cnt[15] ;
 wire \clk_cnt[1] ;
 wire \clk_cnt[2] ;
 wire \clk_cnt[3] ;
 wire \clk_cnt[4] ;
 wire \clk_cnt[5] ;
 wire \clk_cnt[6] ;
 wire \clk_cnt[7] ;
 wire \clk_cnt[8] ;
 wire \clk_cnt[9] ;
 wire \data_reg[0] ;
 wire \data_reg[1] ;
 wire \data_reg[2] ;
 wire \data_reg[3] ;
 wire \data_reg[4] ;
 wire \data_reg[5] ;
 wire \data_reg[6] ;
 wire \data_reg[7] ;
 wire parity_bit;
 wire \state[0] ;
 wire \state[1] ;
 wire \state[2] ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;

 sky130_fd_sc_hd__xnor2_1 _112_ (.A(net2),
    .B(net1),
    .Y(_091_));
 sky130_fd_sc_hd__xnor2_1 _113_ (.A(net8),
    .B(net7),
    .Y(_092_));
 sky130_fd_sc_hd__xnor2_1 _114_ (.A(_091_),
    .B(_092_),
    .Y(_093_));
 sky130_fd_sc_hd__xor2_1 _115_ (.A(net6),
    .B(net5),
    .X(_094_));
 sky130_fd_sc_hd__xnor2_1 _116_ (.A(net4),
    .B(net3),
    .Y(_095_));
 sky130_fd_sc_hd__xnor2_1 _117_ (.A(_094_),
    .B(_095_),
    .Y(_096_));
 sky130_fd_sc_hd__xnor2_1 _118_ (.A(_093_),
    .B(_096_),
    .Y(_097_));
 sky130_fd_sc_hd__buf_2 _119_ (.A(\state[1] ),
    .X(_098_));
 sky130_fd_sc_hd__nor3_2 _120_ (.A(\state[2] ),
    .B(\state[0] ),
    .C(_098_),
    .Y(_099_));
 sky130_fd_sc_hd__nand2_4 _121_ (.A(net10),
    .B(_099_),
    .Y(_100_));
 sky130_fd_sc_hd__mux2_1 _122_ (.A0(_097_),
    .A1(parity_bit),
    .S(_100_),
    .X(_101_));
 sky130_fd_sc_hd__clkbuf_1 _123_ (.A(_101_),
    .X(_000_));
 sky130_fd_sc_hd__inv_2 _124_ (.A(\state[2] ),
    .Y(_102_));
 sky130_fd_sc_hd__mux4_1 _125_ (.A0(\data_reg[0] ),
    .A1(\data_reg[1] ),
    .A2(\data_reg[2] ),
    .A3(\data_reg[3] ),
    .S0(\bit_idx[0] ),
    .S1(\bit_idx[1] ),
    .X(_103_));
 sky130_fd_sc_hd__or2_1 _126_ (.A(\bit_idx[2] ),
    .B(_103_),
    .X(_104_));
 sky130_fd_sc_hd__mux4_1 _127_ (.A0(\data_reg[4] ),
    .A1(\data_reg[5] ),
    .A2(\data_reg[6] ),
    .A3(\data_reg[7] ),
    .S0(\bit_idx[0] ),
    .S1(\bit_idx[1] ),
    .X(_105_));
 sky130_fd_sc_hd__or2b_1 _128_ (.A(_105_),
    .B_N(\bit_idx[2] ),
    .X(_106_));
 sky130_fd_sc_hd__nor2_2 _129_ (.A(\state[2] ),
    .B(\state[0] ),
    .Y(_107_));
 sky130_fd_sc_hd__and2_1 _130_ (.A(_102_),
    .B(\state[0] ),
    .X(_108_));
 sky130_fd_sc_hd__a32o_1 _131_ (.A1(_104_),
    .A2(_106_),
    .A3(_107_),
    .B1(_108_),
    .B2(parity_bit),
    .X(_109_));
 sky130_fd_sc_hd__a2bb2o_1 _132_ (.A1_N(\state[0] ),
    .A2_N(_098_),
    .B1(net12),
    .B2(\state[2] ),
    .X(_110_));
 sky130_fd_sc_hd__a31o_1 _133_ (.A1(_102_),
    .A2(_098_),
    .A3(_109_),
    .B1(_110_),
    .X(_001_));
 sky130_fd_sc_hd__mux2_1 _134_ (.A0(net11),
    .A1(net10),
    .S(_099_),
    .X(_111_));
 sky130_fd_sc_hd__clkbuf_1 _135_ (.A(_111_),
    .X(_002_));
 sky130_fd_sc_hd__or4_1 _136_ (.A(\clk_cnt[3] ),
    .B(\clk_cnt[1] ),
    .C(\clk_cnt[2] ),
    .D(\clk_cnt[0] ),
    .X(_033_));
 sky130_fd_sc_hd__a31o_1 _137_ (.A1(\clk_cnt[5] ),
    .A2(\clk_cnt[4] ),
    .A3(_033_),
    .B1(\clk_cnt[6] ),
    .X(_034_));
 sky130_fd_sc_hd__or4_1 _138_ (.A(\clk_cnt[13] ),
    .B(\clk_cnt[14] ),
    .C(\clk_cnt[12] ),
    .D(\clk_cnt[11] ),
    .X(_035_));
 sky130_fd_sc_hd__or4_1 _139_ (.A(\clk_cnt[10] ),
    .B(\clk_cnt[9] ),
    .C(\clk_cnt[15] ),
    .D(_035_),
    .X(_036_));
 sky130_fd_sc_hd__o21a_1 _140_ (.A1(\state[0] ),
    .A2(\state[1] ),
    .B1(\state[2] ),
    .X(_037_));
 sky130_fd_sc_hd__or2_1 _141_ (.A(_099_),
    .B(_037_),
    .X(_038_));
 sky130_fd_sc_hd__a311o_1 _142_ (.A1(\clk_cnt[8] ),
    .A2(\clk_cnt[7] ),
    .A3(_034_),
    .B1(_036_),
    .C1(_038_),
    .X(_039_));
 sky130_fd_sc_hd__nand2_1 _143_ (.A(_098_),
    .B(_107_),
    .Y(_040_));
 sky130_fd_sc_hd__a31o_1 _144_ (.A1(\bit_idx[2] ),
    .A2(\bit_idx[1] ),
    .A3(\bit_idx[0] ),
    .B1(_040_),
    .X(_041_));
 sky130_fd_sc_hd__or4_1 _145_ (.A(\state[2] ),
    .B(\state[0] ),
    .C(_098_),
    .D(net10),
    .X(_042_));
 sky130_fd_sc_hd__and3_1 _146_ (.A(_039_),
    .B(_041_),
    .C(_042_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _147_ (.A0(\state[0] ),
    .A1(_107_),
    .S(_043_),
    .X(_044_));
 sky130_fd_sc_hd__clkbuf_1 _148_ (.A(_044_),
    .X(_003_));
 sky130_fd_sc_hd__clkbuf_2 _149_ (.A(_039_),
    .X(_045_));
 sky130_fd_sc_hd__and4_1 _150_ (.A(_108_),
    .B(_045_),
    .C(_041_),
    .D(_042_),
    .X(_046_));
 sky130_fd_sc_hd__and4b_1 _151_ (.A_N(_107_),
    .B(_045_),
    .C(_042_),
    .D(_098_),
    .X(_047_));
 sky130_fd_sc_hd__o21ba_1 _152_ (.A1(_098_),
    .A2(_046_),
    .B1_N(_047_),
    .X(_004_));
 sky130_fd_sc_hd__a2bb2o_1 _153_ (.A1_N(_102_),
    .A2_N(_043_),
    .B1(_046_),
    .B2(_098_),
    .X(_005_));
 sky130_fd_sc_hd__a31o_1 _154_ (.A1(\clk_cnt[8] ),
    .A2(\clk_cnt[7] ),
    .A3(_034_),
    .B1(_036_),
    .X(_048_));
 sky130_fd_sc_hd__nor2_1 _155_ (.A(_048_),
    .B(_038_),
    .Y(_049_));
 sky130_fd_sc_hd__clkbuf_2 _156_ (.A(_037_),
    .X(_050_));
 sky130_fd_sc_hd__mux2_1 _157_ (.A0(_049_),
    .A1(_050_),
    .S(\clk_cnt[0] ),
    .X(_051_));
 sky130_fd_sc_hd__clkbuf_1 _158_ (.A(_051_),
    .X(_006_));
 sky130_fd_sc_hd__o21bai_1 _159_ (.A1(\clk_cnt[0] ),
    .A2(_045_),
    .B1_N(_037_),
    .Y(_052_));
 sky130_fd_sc_hd__or3b_1 _160_ (.A(_045_),
    .B(\clk_cnt[1] ),
    .C_N(\clk_cnt[0] ),
    .X(_053_));
 sky130_fd_sc_hd__a21bo_1 _161_ (.A1(\clk_cnt[1] ),
    .A2(_052_),
    .B1_N(_053_),
    .X(_007_));
 sky130_fd_sc_hd__a21o_1 _162_ (.A1(\clk_cnt[1] ),
    .A2(\clk_cnt[0] ),
    .B1(\clk_cnt[2] ),
    .X(_054_));
 sky130_fd_sc_hd__nand3_1 _163_ (.A(\clk_cnt[1] ),
    .B(\clk_cnt[2] ),
    .C(\clk_cnt[0] ),
    .Y(_055_));
 sky130_fd_sc_hd__a32o_1 _164_ (.A1(_049_),
    .A2(_054_),
    .A3(_055_),
    .B1(_050_),
    .B2(\clk_cnt[2] ),
    .X(_008_));
 sky130_fd_sc_hd__inv_2 _165_ (.A(\clk_cnt[3] ),
    .Y(_056_));
 sky130_fd_sc_hd__and4_1 _166_ (.A(\clk_cnt[3] ),
    .B(\clk_cnt[1] ),
    .C(\clk_cnt[2] ),
    .D(\clk_cnt[0] ),
    .X(_057_));
 sky130_fd_sc_hd__o2bb2a_1 _167_ (.A1_N(\clk_cnt[3] ),
    .A2_N(_037_),
    .B1(_045_),
    .B2(_057_),
    .X(_058_));
 sky130_fd_sc_hd__a21oi_1 _168_ (.A1(_056_),
    .A2(_055_),
    .B1(_058_),
    .Y(_009_));
 sky130_fd_sc_hd__and2_1 _169_ (.A(\clk_cnt[4] ),
    .B(_057_),
    .X(_059_));
 sky130_fd_sc_hd__nor2_1 _170_ (.A(_045_),
    .B(_059_),
    .Y(_060_));
 sky130_fd_sc_hd__o21bai_1 _171_ (.A1(_045_),
    .A2(_059_),
    .B1_N(_037_),
    .Y(_061_));
 sky130_fd_sc_hd__a22o_1 _172_ (.A1(_057_),
    .A2(_060_),
    .B1(_061_),
    .B2(\clk_cnt[4] ),
    .X(_010_));
 sky130_fd_sc_hd__or3b_1 _173_ (.A(\clk_cnt[5] ),
    .B(_045_),
    .C_N(_059_),
    .X(_062_));
 sky130_fd_sc_hd__a21bo_1 _174_ (.A1(\clk_cnt[5] ),
    .A2(_061_),
    .B1_N(_062_),
    .X(_011_));
 sky130_fd_sc_hd__a31o_1 _175_ (.A1(\clk_cnt[5] ),
    .A2(\clk_cnt[4] ),
    .A3(_057_),
    .B1(\clk_cnt[6] ),
    .X(_063_));
 sky130_fd_sc_hd__nand3_1 _176_ (.A(\clk_cnt[6] ),
    .B(\clk_cnt[5] ),
    .C(_059_),
    .Y(_064_));
 sky130_fd_sc_hd__a32o_1 _177_ (.A1(_049_),
    .A2(_063_),
    .A3(_064_),
    .B1(_050_),
    .B2(\clk_cnt[6] ),
    .X(_012_));
 sky130_fd_sc_hd__and4_1 _178_ (.A(\clk_cnt[7] ),
    .B(\clk_cnt[6] ),
    .C(\clk_cnt[5] ),
    .D(_059_),
    .X(_065_));
 sky130_fd_sc_hd__o21bai_1 _179_ (.A1(_045_),
    .A2(_065_),
    .B1_N(_037_),
    .Y(_066_));
 sky130_fd_sc_hd__or3_1 _180_ (.A(\clk_cnt[7] ),
    .B(_045_),
    .C(_064_),
    .X(_067_));
 sky130_fd_sc_hd__a21bo_1 _181_ (.A1(\clk_cnt[7] ),
    .A2(_066_),
    .B1_N(_067_),
    .X(_013_));
 sky130_fd_sc_hd__a22o_1 _182_ (.A1(_049_),
    .A2(_065_),
    .B1(_066_),
    .B2(\clk_cnt[8] ),
    .X(_014_));
 sky130_fd_sc_hd__and2_1 _183_ (.A(\clk_cnt[9] ),
    .B(_050_),
    .X(_068_));
 sky130_fd_sc_hd__clkbuf_1 _184_ (.A(_068_),
    .X(_015_));
 sky130_fd_sc_hd__and2_1 _185_ (.A(\clk_cnt[10] ),
    .B(_050_),
    .X(_069_));
 sky130_fd_sc_hd__clkbuf_1 _186_ (.A(_069_),
    .X(_016_));
 sky130_fd_sc_hd__and2_1 _187_ (.A(\clk_cnt[11] ),
    .B(_050_),
    .X(_070_));
 sky130_fd_sc_hd__clkbuf_1 _188_ (.A(_070_),
    .X(_017_));
 sky130_fd_sc_hd__and2_1 _189_ (.A(\clk_cnt[12] ),
    .B(_050_),
    .X(_071_));
 sky130_fd_sc_hd__clkbuf_1 _190_ (.A(_071_),
    .X(_018_));
 sky130_fd_sc_hd__and2_1 _191_ (.A(\clk_cnt[13] ),
    .B(_050_),
    .X(_072_));
 sky130_fd_sc_hd__clkbuf_1 _192_ (.A(_072_),
    .X(_019_));
 sky130_fd_sc_hd__and2_1 _193_ (.A(\clk_cnt[14] ),
    .B(_050_),
    .X(_073_));
 sky130_fd_sc_hd__clkbuf_1 _194_ (.A(_073_),
    .X(_020_));
 sky130_fd_sc_hd__and2_1 _195_ (.A(\clk_cnt[15] ),
    .B(_050_),
    .X(_074_));
 sky130_fd_sc_hd__clkbuf_1 _196_ (.A(_074_),
    .X(_021_));
 sky130_fd_sc_hd__and3_1 _197_ (.A(_098_),
    .B(_107_),
    .C(_048_),
    .X(_075_));
 sky130_fd_sc_hd__inv_2 _198_ (.A(_098_),
    .Y(_076_));
 sky130_fd_sc_hd__o21ai_1 _199_ (.A1(_076_),
    .A2(_048_),
    .B1(_107_),
    .Y(_077_));
 sky130_fd_sc_hd__mux2_1 _200_ (.A0(_075_),
    .A1(_077_),
    .S(\bit_idx[0] ),
    .X(_078_));
 sky130_fd_sc_hd__clkbuf_1 _201_ (.A(_078_),
    .X(_022_));
 sky130_fd_sc_hd__nand2_1 _202_ (.A(\bit_idx[1] ),
    .B(\bit_idx[0] ),
    .Y(_079_));
 sky130_fd_sc_hd__or2_1 _203_ (.A(\bit_idx[1] ),
    .B(\bit_idx[0] ),
    .X(_080_));
 sky130_fd_sc_hd__a32o_1 _204_ (.A1(_079_),
    .A2(_075_),
    .A3(_080_),
    .B1(_077_),
    .B2(\bit_idx[1] ),
    .X(_023_));
 sky130_fd_sc_hd__inv_2 _205_ (.A(_041_),
    .Y(_081_));
 sky130_fd_sc_hd__o2111a_1 _206_ (.A1(_076_),
    .A2(_048_),
    .B1(_107_),
    .C1(\bit_idx[0] ),
    .D1(\bit_idx[1] ),
    .X(_082_));
 sky130_fd_sc_hd__o22a_1 _207_ (.A1(_081_),
    .A2(_077_),
    .B1(_082_),
    .B2(\bit_idx[2] ),
    .X(_024_));
 sky130_fd_sc_hd__mux2_1 _208_ (.A0(net1),
    .A1(\data_reg[0] ),
    .S(_100_),
    .X(_083_));
 sky130_fd_sc_hd__clkbuf_1 _209_ (.A(_083_),
    .X(_025_));
 sky130_fd_sc_hd__mux2_1 _210_ (.A0(net2),
    .A1(\data_reg[1] ),
    .S(_100_),
    .X(_084_));
 sky130_fd_sc_hd__clkbuf_1 _211_ (.A(_084_),
    .X(_026_));
 sky130_fd_sc_hd__mux2_1 _212_ (.A0(net3),
    .A1(\data_reg[2] ),
    .S(_100_),
    .X(_085_));
 sky130_fd_sc_hd__clkbuf_1 _213_ (.A(_085_),
    .X(_027_));
 sky130_fd_sc_hd__mux2_1 _214_ (.A0(net4),
    .A1(\data_reg[3] ),
    .S(_100_),
    .X(_086_));
 sky130_fd_sc_hd__clkbuf_1 _215_ (.A(_086_),
    .X(_028_));
 sky130_fd_sc_hd__mux2_1 _216_ (.A0(net5),
    .A1(\data_reg[4] ),
    .S(_100_),
    .X(_087_));
 sky130_fd_sc_hd__clkbuf_1 _217_ (.A(_087_),
    .X(_029_));
 sky130_fd_sc_hd__mux2_1 _218_ (.A0(net6),
    .A1(\data_reg[5] ),
    .S(_100_),
    .X(_088_));
 sky130_fd_sc_hd__clkbuf_1 _219_ (.A(_088_),
    .X(_030_));
 sky130_fd_sc_hd__mux2_1 _220_ (.A0(net7),
    .A1(\data_reg[6] ),
    .S(_100_),
    .X(_089_));
 sky130_fd_sc_hd__clkbuf_1 _221_ (.A(_089_),
    .X(_031_));
 sky130_fd_sc_hd__mux2_1 _222_ (.A0(net8),
    .A1(\data_reg[7] ),
    .S(_100_),
    .X(_090_));
 sky130_fd_sc_hd__clkbuf_1 _223_ (.A(_090_),
    .X(_032_));
 sky130_fd_sc_hd__dfrtp_1 _224_ (.CLK(clk),
    .D(_000_),
    .RESET_B(net13),
    .Q(parity_bit));
 sky130_fd_sc_hd__dfstp_1 _225_ (.CLK(clk),
    .D(_001_),
    .SET_B(net15),
    .Q(net12));
 sky130_fd_sc_hd__dfrtp_2 _226_ (.CLK(clk),
    .D(_002_),
    .RESET_B(net16),
    .Q(net11));
 sky130_fd_sc_hd__dfrtp_2 _227_ (.CLK(clk),
    .D(_003_),
    .RESET_B(net16),
    .Q(\state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _228_ (.CLK(clk),
    .D(_004_),
    .RESET_B(net16),
    .Q(\state[1] ));
 sky130_fd_sc_hd__dfrtp_4 _229_ (.CLK(clk),
    .D(_005_),
    .RESET_B(net16),
    .Q(\state[2] ));
 sky130_fd_sc_hd__dfrtp_2 _230_ (.CLK(clk),
    .D(_006_),
    .RESET_B(net15),
    .Q(\clk_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_1 _231_ (.CLK(clk),
    .D(_007_),
    .RESET_B(net15),
    .Q(\clk_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _232_ (.CLK(clk),
    .D(_008_),
    .RESET_B(net15),
    .Q(\clk_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _233_ (.CLK(clk),
    .D(_009_),
    .RESET_B(net15),
    .Q(\clk_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_1 _234_ (.CLK(clk),
    .D(_010_),
    .RESET_B(net15),
    .Q(\clk_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_1 _235_ (.CLK(clk),
    .D(_011_),
    .RESET_B(net15),
    .Q(\clk_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_1 _236_ (.CLK(clk),
    .D(_012_),
    .RESET_B(net15),
    .Q(\clk_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_1 _237_ (.CLK(clk),
    .D(_013_),
    .RESET_B(net15),
    .Q(\clk_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_1 _238_ (.CLK(clk),
    .D(_014_),
    .RESET_B(net15),
    .Q(\clk_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_1 _239_ (.CLK(clk),
    .D(_015_),
    .RESET_B(net13),
    .Q(\clk_cnt[9] ));
 sky130_fd_sc_hd__dfrtp_1 _240_ (.CLK(clk),
    .D(_016_),
    .RESET_B(net13),
    .Q(\clk_cnt[10] ));
 sky130_fd_sc_hd__dfrtp_1 _241_ (.CLK(clk),
    .D(_017_),
    .RESET_B(net13),
    .Q(\clk_cnt[11] ));
 sky130_fd_sc_hd__dfrtp_1 _242_ (.CLK(clk),
    .D(_018_),
    .RESET_B(net13),
    .Q(\clk_cnt[12] ));
 sky130_fd_sc_hd__dfrtp_1 _243_ (.CLK(clk),
    .D(_019_),
    .RESET_B(net13),
    .Q(\clk_cnt[13] ));
 sky130_fd_sc_hd__dfrtp_1 _244_ (.CLK(clk),
    .D(_020_),
    .RESET_B(net13),
    .Q(\clk_cnt[14] ));
 sky130_fd_sc_hd__dfrtp_1 _245_ (.CLK(clk),
    .D(_021_),
    .RESET_B(net13),
    .Q(\clk_cnt[15] ));
 sky130_fd_sc_hd__dfrtp_4 _246_ (.CLK(clk),
    .D(_022_),
    .RESET_B(net13),
    .Q(\bit_idx[0] ));
 sky130_fd_sc_hd__dfrtp_2 _247_ (.CLK(clk),
    .D(_023_),
    .RESET_B(net13),
    .Q(\bit_idx[1] ));
 sky130_fd_sc_hd__dfrtp_1 _248_ (.CLK(clk),
    .D(_024_),
    .RESET_B(net14),
    .Q(\bit_idx[2] ));
 sky130_fd_sc_hd__dfrtp_1 _249_ (.CLK(clk),
    .D(_025_),
    .RESET_B(net14),
    .Q(\data_reg[0] ));
 sky130_fd_sc_hd__dfrtp_1 _250_ (.CLK(clk),
    .D(_026_),
    .RESET_B(net14),
    .Q(\data_reg[1] ));
 sky130_fd_sc_hd__dfrtp_1 _251_ (.CLK(clk),
    .D(_027_),
    .RESET_B(net14),
    .Q(\data_reg[2] ));
 sky130_fd_sc_hd__dfrtp_1 _252_ (.CLK(clk),
    .D(_028_),
    .RESET_B(net14),
    .Q(\data_reg[3] ));
 sky130_fd_sc_hd__dfrtp_1 _253_ (.CLK(clk),
    .D(_029_),
    .RESET_B(net14),
    .Q(\data_reg[4] ));
 sky130_fd_sc_hd__dfrtp_1 _254_ (.CLK(clk),
    .D(_030_),
    .RESET_B(net14),
    .Q(\data_reg[5] ));
 sky130_fd_sc_hd__dfrtp_1 _255_ (.CLK(clk),
    .D(_031_),
    .RESET_B(net14),
    .Q(\data_reg[6] ));
 sky130_fd_sc_hd__dfrtp_1 _256_ (.CLK(clk),
    .D(_032_),
    .RESET_B(net14),
    .Q(\data_reg[7] ));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__decap_3 PHY_74 ();
 sky130_fd_sc_hd__decap_3 PHY_75 ();
 sky130_fd_sc_hd__decap_3 PHY_76 ();
 sky130_fd_sc_hd__decap_3 PHY_77 ();
 sky130_fd_sc_hd__decap_3 PHY_78 ();
 sky130_fd_sc_hd__decap_3 PHY_79 ();
 sky130_fd_sc_hd__decap_3 PHY_80 ();
 sky130_fd_sc_hd__decap_3 PHY_81 ();
 sky130_fd_sc_hd__decap_3 PHY_82 ();
 sky130_fd_sc_hd__decap_3 PHY_83 ();
 sky130_fd_sc_hd__decap_3 PHY_84 ();
 sky130_fd_sc_hd__decap_3 PHY_85 ();
 sky130_fd_sc_hd__decap_3 PHY_86 ();
 sky130_fd_sc_hd__decap_3 PHY_87 ();
 sky130_fd_sc_hd__decap_3 PHY_88 ();
 sky130_fd_sc_hd__decap_3 PHY_89 ();
 sky130_fd_sc_hd__decap_3 PHY_90 ();
 sky130_fd_sc_hd__decap_3 PHY_91 ();
 sky130_fd_sc_hd__decap_3 PHY_92 ();
 sky130_fd_sc_hd__decap_3 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_313 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_314 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_315 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_316 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_317 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_318 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_319 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_320 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_321 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_322 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_323 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_324 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_325 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_326 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_327 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_328 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_329 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_330 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_331 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_332 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_333 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_334 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_335 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_336 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_337 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_338 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(data_in[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(data_in[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(data_in[2]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(data_in[3]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(data_in[4]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(data_in[5]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(data_in[6]),
    .X(net7));
 sky130_fd_sc_hd__dlymetal6s2s_1 input8 (.A(data_in[7]),
    .X(net8));
 sky130_fd_sc_hd__clkbuf_1 input9 (.A(rst_n),
    .X(net9));
 sky130_fd_sc_hd__dlymetal6s2s_1 input10 (.A(tx_start),
    .X(net10));
 sky130_fd_sc_hd__buf_2 output11 (.A(net11),
    .X(tx_busy));
 sky130_fd_sc_hd__clkbuf_4 output12 (.A(net12),
    .X(tx_out));
 sky130_fd_sc_hd__clkbuf_4 fanout13 (.A(net16),
    .X(net13));
 sky130_fd_sc_hd__clkbuf_4 fanout14 (.A(net16),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_4 fanout15 (.A(net16),
    .X(net15));
 sky130_fd_sc_hd__buf_2 fanout16 (.A(net9),
    .X(net16));
endmodule
