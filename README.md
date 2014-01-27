UART TX, version 3
==========

Final version of a modified UART transmitter, written in Verilog.
The current specs are: 

* Speed: 9600 bits/second
* 8-bit data
* No parity bit
* Start bit on low (zero)
* Stop bit on high (one)
* Idle on high
* Enable signal must go low before sending new data (this was made on purpose)
* This was made to work with Xbee modules

These are fully configurable, some via just changing parameters inside #() parentheses.
