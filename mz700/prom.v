////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2004 Xilinx, Inc.
// All Rights Reserved
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: v1.30
//  \   \         Application : KCPSM3
//  /   /         Filename: prom.v
// /___/   /\     
// \   \  /  \
//  \___\/\___\
//
//Command: kcpsm3 prom.psm
//Device: Spartan-3, Spartan-3E, Virtex-II, and Virtex-II Pro FPGAs
//Design Name: prom
//Generated 29 Oct 2016 - 00:24:02.
//Purpose:
//	prom verilog program definition.
//
//Reference:
//	PicoBlaze 8-bit Embedded Microcontroller User Guide
////////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1ps
module prom (address, instruction, clk);
input [9:0] address;
input clk;
output [17:0] instruction;
RAMB16_S18 ram_1024_x_18(
	.DI 	(16'h0000),
	.DIP 	(2'b00),
	.EN	(1'b1),
	.WE	(1'b0),
	.SSR	(1'b0),
	.CLK	(clk),
	.ADDR	(address),
	.DO	(instruction[15:0]),
	.DOP	(instruction[17:16]))
/*synthesis 
init_00 = "D007D00610000015E0084006900400A8800100B5121D1F03D107D106D1011100" 
init_01 = "00715000006E00D71215DD081D001C001B001900D0042010E0084006900400A8" 
init_02 = "1E80007E5000006E007E5000006E007B5000006E007B5000006E00715000006E" 
init_03 = "D46C2043D50605E0603FD46D008D9E05009E1E80147F180017005000006E009E" 
init_04 = "006E00715000006E0081E03694015000006E3800071000991307D60706E06043" 
init_05 = "1307008D9E05009E1E80180017005000006E009E1E80007E5000006E007B5000" 
init_06 = "D0409004201F0081605B406000505000006ED607D506B6009501380007100099" 
init_07 = "13131E00209913131EFF209913F7607394015000006E009913FF14281E005000" 
init_08 = "90065000DBFF209E1E8000990E701307009E1E8000990E801307009E1E802099" 
init_09 = "D04090045000E09A9301009E11005000B20200D71206F2021B001000C0109107" 
init_0A = "900100B5D00110019202D000400E900150001101D0004E02DE02A09E400E5000" 
init_0B = "00D7121B5000D21D20D7D20DA0D740069001E0D7D2205000D0011000A0AF400E" 
init_0C = "DF0220D600D7123460CFDF0100D7123320D600D7123060C83F031F0100D7125B" 
init_0D = "19019A00F001F2005000D200A0D7400E9003126D00D7123120D600D7123260D4" 
init_0E = "1D0120F1CAC020FB0CA0DA05E0EDD98420FBE0E8D90420FB20F9DA0460E5D901" 
init_0F = "000000009001B001B20000D7120620FB1BFF60F9C2A092079A061C001900DD08" 
init_10 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_11 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_12 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_13 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_14 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_15 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_16 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_17 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_18 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_19 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1A = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1B = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1C = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1D = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1E = "0000000000000000000000000000000000000000000000000000000000000000" 
init_1F = "0000000000000000000000000000000000000000000000000000000000000000" 
init_20 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_21 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_22 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_23 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_24 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_25 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_26 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_27 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_28 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_29 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2A = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2B = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2C = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2D = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2E = "0000000000000000000000000000000000000000000000000000000000000000" 
init_2F = "0000000000000000000000000000000000000000000000000000000000000000" 
init_30 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_31 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_32 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_33 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_34 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_35 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_36 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_37 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_38 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_39 = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3A = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3B = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3C = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3D = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3E = "0000000000000000000000000000000000000000000000000000000000000000" 
init_3F = "20DC000000000000000000000000000000000000000000000000000000000000" 
initp_00 = "08237A020AC3A9562203A2EBAEB7962368D8803A2EBAEBAEBA200AD2A2D2A0A8" 
initp_01 = "08223402766DB6DD4AAD08A368D8A3188DDD368D28349DB70B62223436208822" 
initp_02 = "0000000000000000000000000000000000000000000000000000000000000000" 
initp_03 = "0000000000000000000000000000000000000000000000000000000000000000" 
initp_04 = "0000000000000000000000000000000000000000000000000000000000000000" 
initp_05 = "0000000000000000000000000000000000000000000000000000000000000000" 
initp_06 = "0000000000000000000000000000000000000000000000000000000000000000" 
initp_07 = "8000000000000000000000000000000000000000000000000000000000000000" */;
// synthesis translate_off
// Attributes for Simulation
defparam ram_1024_x_18.INIT_00  = 256'hD007D00610000015E0084006900400A8800100B5121D1F03D107D106D1011100;
defparam ram_1024_x_18.INIT_01  = 256'h00715000006E00D71215DD081D001C001B001900D0042010E0084006900400A8;
defparam ram_1024_x_18.INIT_02  = 256'h1E80007E5000006E007E5000006E007B5000006E007B5000006E00715000006E;
defparam ram_1024_x_18.INIT_03  = 256'hD46C2043D50605E0603FD46D008D9E05009E1E80147F180017005000006E009E;
defparam ram_1024_x_18.INIT_04  = 256'h006E00715000006E0081E03694015000006E3800071000991307D60706E06043;
defparam ram_1024_x_18.INIT_05  = 256'h1307008D9E05009E1E80180017005000006E009E1E80007E5000006E007B5000;
defparam ram_1024_x_18.INIT_06  = 256'hD0409004201F0081605B406000505000006ED607D506B6009501380007100099;
defparam ram_1024_x_18.INIT_07  = 256'h13131E00209913131EFF209913F7607394015000006E009913FF14281E005000;
defparam ram_1024_x_18.INIT_08  = 256'h90065000DBFF209E1E8000990E701307009E1E8000990E801307009E1E802099;
defparam ram_1024_x_18.INIT_09  = 256'hD04090045000E09A9301009E11005000B20200D71206F2021B001000C0109107;
defparam ram_1024_x_18.INIT_0A  = 256'h900100B5D00110019202D000400E900150001101D0004E02DE02A09E400E5000;
defparam ram_1024_x_18.INIT_0B  = 256'h00D7121B5000D21D20D7D20DA0D740069001E0D7D2205000D0011000A0AF400E;
defparam ram_1024_x_18.INIT_0C  = 256'hDF0220D600D7123460CFDF0100D7123320D600D7123060C83F031F0100D7125B;
defparam ram_1024_x_18.INIT_0D  = 256'h19019A00F001F2005000D200A0D7400E9003126D00D7123120D600D7123260D4;
defparam ram_1024_x_18.INIT_0E  = 256'h1D0120F1CAC020FB0CA0DA05E0EDD98420FBE0E8D90420FB20F9DA0460E5D901;
defparam ram_1024_x_18.INIT_0F  = 256'h000000009001B001B20000D7120620FB1BFF60F9C2A092079A061C001900DD08;
defparam ram_1024_x_18.INIT_10  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_11  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_12  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_13  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_14  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_15  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_16  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_17  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_18  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_19  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1A  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1B  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1C  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1D  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1E  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_1F  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_20  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_21  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_22  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_23  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_24  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_25  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_26  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_27  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_28  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_29  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2A  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2B  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2C  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2D  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2E  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_2F  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_30  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_31  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_32  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_33  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_34  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_35  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_36  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_37  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_38  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_39  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3A  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3B  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3C  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3D  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3E  = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INIT_3F  = 256'h20DC000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_00 = 256'h08237A020AC3A9562203A2EBAEB7962368D8803A2EBAEBAEBA200AD2A2D2A0A8;
defparam ram_1024_x_18.INITP_01 = 256'h08223402766DB6DD4AAD08A368D8A3188DDD368D28349DB70B62223436208822;
defparam ram_1024_x_18.INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
defparam ram_1024_x_18.INITP_07 = 256'h8000000000000000000000000000000000000000000000000000000000000000;
// synthesis translate_on
// Attributes for XST (Synplicity attributes are in-line)
// synthesis attribute INIT_00  of ram_1024_x_18 is "D007D00610000015E0084006900400A8800100B5121D1F03D107D106D1011100"
// synthesis attribute INIT_01  of ram_1024_x_18 is "00715000006E00D71215DD081D001C001B001900D0042010E0084006900400A8"
// synthesis attribute INIT_02  of ram_1024_x_18 is "1E80007E5000006E007E5000006E007B5000006E007B5000006E00715000006E"
// synthesis attribute INIT_03  of ram_1024_x_18 is "D46C2043D50605E0603FD46D008D9E05009E1E80147F180017005000006E009E"
// synthesis attribute INIT_04  of ram_1024_x_18 is "006E00715000006E0081E03694015000006E3800071000991307D60706E06043"
// synthesis attribute INIT_05  of ram_1024_x_18 is "1307008D9E05009E1E80180017005000006E009E1E80007E5000006E007B5000"
// synthesis attribute INIT_06  of ram_1024_x_18 is "D0409004201F0081605B406000505000006ED607D506B6009501380007100099"
// synthesis attribute INIT_07  of ram_1024_x_18 is "13131E00209913131EFF209913F7607394015000006E009913FF14281E005000"
// synthesis attribute INIT_08  of ram_1024_x_18 is "90065000DBFF209E1E8000990E701307009E1E8000990E801307009E1E802099"
// synthesis attribute INIT_09  of ram_1024_x_18 is "D04090045000E09A9301009E11005000B20200D71206F2021B001000C0109107"
// synthesis attribute INIT_0A  of ram_1024_x_18 is "900100B5D00110019202D000400E900150001101D0004E02DE02A09E400E5000"
// synthesis attribute INIT_0B  of ram_1024_x_18 is "00D7121B5000D21D20D7D20DA0D740069001E0D7D2205000D0011000A0AF400E"
// synthesis attribute INIT_0C  of ram_1024_x_18 is "DF0220D600D7123460CFDF0100D7123320D600D7123060C83F031F0100D7125B"
// synthesis attribute INIT_0D  of ram_1024_x_18 is "19019A00F001F2005000D200A0D7400E9003126D00D7123120D600D7123260D4"
// synthesis attribute INIT_0E  of ram_1024_x_18 is "1D0120F1CAC020FB0CA0DA05E0EDD98420FBE0E8D90420FB20F9DA0460E5D901"
// synthesis attribute INIT_0F  of ram_1024_x_18 is "000000009001B001B20000D7120620FB1BFF60F9C2A092079A061C001900DD08"
// synthesis attribute INIT_10  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_11  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_12  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_13  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_14  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_15  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_16  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_17  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_18  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_19  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1A  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1B  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1C  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1D  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1E  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_1F  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_20  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_21  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_22  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_23  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_24  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_25  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_26  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_27  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_28  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_29  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2A  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2B  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2C  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2D  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2E  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_2F  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_30  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_31  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_32  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_33  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_34  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_35  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_36  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_37  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_38  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_39  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3A  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3B  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3C  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3D  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3E  of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INIT_3F  of ram_1024_x_18 is "20DC000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_00 of ram_1024_x_18 is "08237A020AC3A9562203A2EBAEB7962368D8803A2EBAEBAEBA200AD2A2D2A0A8"
// synthesis attribute INITP_01 of ram_1024_x_18 is "08223402766DB6DD4AAD08A368D8A3188DDD368D28349DB70B62223436208822"
// synthesis attribute INITP_02 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_03 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_04 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_05 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_06 of ram_1024_x_18 is "0000000000000000000000000000000000000000000000000000000000000000"
// synthesis attribute INITP_07 of ram_1024_x_18 is "8000000000000000000000000000000000000000000000000000000000000000"
endmodule
// END OF FILE prom.v
