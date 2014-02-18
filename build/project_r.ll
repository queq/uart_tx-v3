Revision 3
; Created by bitgen P.68d at Wed Jan 29 10:09:57 2014
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit  3287397 0x00000e1f    453 Block=SLICE_X47Y107 Latch=AMUX Net=Result<0>
Bit  3287421 0x00000e1f    477 Block=SLICE_X47Y107 Latch=BQ Net=freqDiv/bitCount<1>
Bit  3287426 0x00000e1f    482 Block=SLICE_X47Y107 Latch=CQ Net=freqDiv/bitCount<2>
Bit  3287451 0x00000e1f    507 Block=SLICE_X47Y107 Latch=DQ Net=freqDiv/bitCount<3>
Bit  3287459 0x00000e1f    515 Block=SLICE_X46Y108 Latch=AQ Net=freqDiv/bitCount<0>
Bit  3287461 0x00000e1f    517 Block=SLICE_X47Y108 Latch=AMUX Net=Result<4>
Bit  3287479 0x00000e1f    535 Block=SLICE_X47Y108 Latch=BMUX Net=Result<5>
Bit  3287489 0x00000e1f    545 Block=SLICE_X46Y108 Latch=CQ Net=freqDiv/bitCount<13>
Bit  3287490 0x00000e1f    546 Block=SLICE_X47Y108 Latch=CQ Net=freqDiv/bitCount<6>
Bit  3287508 0x00000e1f    564 Block=SLICE_X47Y108 Latch=DMUX Net=Result<7>
Bit  3287524 0x00000e1f    580 Block=SLICE_X47Y109 Latch=AQ Net=freqDiv/bitCount<8>
Bit  3287549 0x00000e1f    605 Block=SLICE_X47Y109 Latch=BQ Net=freqDiv/bitCount<9>
Bit  3287554 0x00000e1f    610 Block=SLICE_X47Y109 Latch=CQ Net=freqDiv/bitCount<10>
Bit  3287572 0x00000e1f    628 Block=SLICE_X47Y109 Latch=DMUX Net=Result<11>
Bit  3287588 0x00000e1f    644 Block=SLICE_X47Y110 Latch=AQ Net=freqDiv/bitCount<12>
Bit  3287607 0x00000e1f    663 Block=SLICE_X47Y110 Latch=BMUX Net=Result<13>
Bit  3403811 0x00000e9f    515 Block=SLICE_X48Y108 Latch=AQ Net=freqDiv/bitCount<4>
Bit  3403836 0x00000e9f    540 Block=SLICE_X48Y108 Latch=BQ Net=freqDiv/bitCount<5>
Bit  3403841 0x00000e9f    545 Block=SLICE_X48Y108 Latch=CQ Net=freqDiv/bitCount<7>
Bit  3403860 0x00000e9f    564 Block=SLICE_X49Y108 Latch=DMUX Net=freqDiv/bitCount[13]_GND_2_o_equal_2_o_0
Bit  3403866 0x00000e9f    570 Block=SLICE_X48Y108 Latch=DQ Net=freqDiv/bitCount<11>
Bit  3520164 0x00000f1f    516 Block=SLICE_X51Y108 Latch=AQ Net=transmitter/state_reg_FSM_FFd1
Bit  3520165 0x00000f1f    517 Block=SLICE_X51Y108 Latch=AMUX Net=transmitter/_n0094_inv
Bit  3520189 0x00000f1f    541 Block=SLICE_X51Y108 Latch=BQ Net=transmitter/state_reg_FSM_FFd2
Bit  3520193 0x00000f1f    545 Block=SLICE_X50Y108 Latch=CQ Net=transmitter/bits_reg<0>
Bit  3520201 0x00000f1f    553 Block=SLICE_X50Y108 Latch=CMUX Net=N3
Bit  3520211 0x00000f1f    563 Block=SLICE_X50Y108 Latch=DMUX Net=transmitter/bits_reg<2>
Bit  3520218 0x00000f1f    570 Block=SLICE_X50Y108 Latch=DQ Net=transmitter/bits_reg<1>
Bit  3966181 0x0000111f    517 Block=SLICE_X57Y108 Latch=AMUX Net=done_OBUF
Bit 18434115 0x00401a9f   2019 Block=SLICE_X84Y81 Latch=AQ Net=transmitter/data_reg<0>
Bit 18434118 0x00401a9f   2022 Block=SLICE_X84Y81 Latch=AMUX Net=transmitter/data_reg<7>
Bit 18434134 0x00401a9f   2038 Block=SLICE_X84Y81 Latch=BMUX Net=transmitter/data_reg<2>
Bit 18434140 0x00401a9f   2044 Block=SLICE_X84Y81 Latch=BQ Net=transmitter/data_reg<1>
Bit 18434145 0x00401a9f   2049 Block=SLICE_X84Y81 Latch=CQ Net=transmitter/data_reg<3>
Bit 18434153 0x00401a9f   2057 Block=SLICE_X84Y81 Latch=CMUX Net=transmitter/data_reg<4>
Bit 18434163 0x00401a9f   2067 Block=SLICE_X84Y81 Latch=DMUX Net=transmitter/data_reg<6>
Bit 18434170 0x00401a9f   2074 Block=SLICE_X84Y81 Latch=DQ Net=transmitter/data_reg<5>
