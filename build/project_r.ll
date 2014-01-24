Revision 3
; Created by bitgen P.68d at Fri Jan 24 10:57:53 2014
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
Bit 18666083 0x00401b9f   1283 Block=SLICE_X88Y70 Latch=AQ Net=transmitter/state_reg_FSM_FFd1
Bit 18666108 0x00401b9f   1308 Block=SLICE_X88Y70 Latch=BQ Net=transmitter/state_reg_FSM_FFd2
Bit 18666114 0x00401b9f   1314 Block=SLICE_X89Y70 Latch=CQ Net=transmitter/bits_reg<0>
Bit 18666122 0x00401b9f   1322 Block=SLICE_X89Y70 Latch=CMUX Net=N3
Bit 18666132 0x00401b9f   1332 Block=SLICE_X89Y70 Latch=DMUX Net=transmitter/bits_reg<2>
Bit 18666139 0x00401b9f   1339 Block=SLICE_X89Y70 Latch=DQ Net=transmitter/bits_reg<1>
Bit 18666148 0x00401b9f   1348 Block=SLICE_X89Y71 Latch=AQ Net=freqDiv/bitCount<0>
Bit 18666173 0x00401b9f   1373 Block=SLICE_X89Y71 Latch=BQ Net=freqDiv/bitCount<1>
Bit 18666178 0x00401b9f   1378 Block=SLICE_X89Y71 Latch=CQ Net=freqDiv/bitCount<2>
Bit 18666195 0x00401b9f   1395 Block=SLICE_X88Y71 Latch=DMUX Net=freqDiv/bitCount[12]_GND_2_o_equal_2_o_0
Bit 18666196 0x00401b9f   1396 Block=SLICE_X89Y71 Latch=DMUX Net=Result<3>
Bit 18666211 0x00401b9f   1411 Block=SLICE_X88Y72 Latch=AQ Net=freqDiv/bitCount<4>
Bit 18666213 0x00401b9f   1413 Block=SLICE_X89Y72 Latch=AMUX Net=Result<4>
Bit 18666214 0x00401b9f   1414 Block=SLICE_X88Y72 Latch=AMUX Net=freqDiv/bitCount<3>
Bit 18666236 0x00401b9f   1436 Block=SLICE_X88Y72 Latch=BQ Net=freqDiv/bitCount<6>
Bit 18666237 0x00401b9f   1437 Block=SLICE_X89Y72 Latch=BQ Net=freqDiv/bitCount<5>
Bit 18666250 0x00401b9f   1450 Block=SLICE_X89Y72 Latch=CMUX Net=Result<6>
Bit 18666259 0x00401b9f   1459 Block=SLICE_X88Y72 Latch=DMUX Net=freqDiv/bitCount<10>
Bit 18666266 0x00401b9f   1466 Block=SLICE_X88Y72 Latch=DQ Net=freqDiv/bitCount<12>
Bit 18666267 0x00401b9f   1467 Block=SLICE_X89Y72 Latch=DQ Net=freqDiv/bitCount<7>
Bit 18666276 0x00401b9f   1476 Block=SLICE_X89Y73 Latch=AQ Net=freqDiv/bitCount<8>
Bit 18666301 0x00401b9f   1501 Block=SLICE_X89Y73 Latch=BQ Net=freqDiv/bitCount<9>
Bit 18666314 0x00401b9f   1514 Block=SLICE_X89Y73 Latch=CMUX Net=Result<10>
Bit 18666331 0x00401b9f   1531 Block=SLICE_X89Y73 Latch=DQ Net=freqDiv/bitCount<11>
Bit 18666341 0x00401b9f   1541 Block=SLICE_X89Y74 Latch=AMUX Net=Result<12>
Bit 18666564 0x00401b9f   1764 Block=SLICE_X89Y77 Latch=AQ Net=transmitter/data_reg<0>
Bit 18666565 0x00401b9f   1765 Block=SLICE_X89Y77 Latch=AMUX Net=transmitter/data_reg<7>
Bit 18666583 0x00401b9f   1783 Block=SLICE_X89Y77 Latch=BMUX Net=transmitter/data_reg<2>
Bit 18666589 0x00401b9f   1789 Block=SLICE_X89Y77 Latch=BQ Net=transmitter/data_reg<1>
Bit 18666594 0x00401b9f   1794 Block=SLICE_X89Y77 Latch=CQ Net=transmitter/data_reg<3>
Bit 18666602 0x00401b9f   1802 Block=SLICE_X89Y77 Latch=CMUX Net=transmitter/data_reg<4>
Bit 18666612 0x00401b9f   1812 Block=SLICE_X89Y77 Latch=DMUX Net=transmitter/data_reg<6>
Bit 18666619 0x00401b9f   1819 Block=SLICE_X89Y77 Latch=DQ Net=transmitter/data_reg<5>
Bit 18666757 0x00401b9f   1957 Block=SLICE_X89Y80 Latch=AMUX Net=isDone_OBUF
