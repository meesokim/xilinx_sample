--------------------------------------------------------------------------------
-- Copyright (c) 1995-2003 Xilinx, Inc.
-- All Right Reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 7.1.04i
--  \   \         Application : 
--  /   /         Filename : my_dcm2.vhd
-- /___/   /\     Timestamp : 10/25/2005 00:26:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: 
--Design Name: my_dcm2
--
-- Module my_dcm2
-- Generated by Xilinx Architecture Wizard
-- Written for synthesis tool: XST

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
-- synopsys translate_off
library UNISIM;
use UNISIM.Vcomponents.ALL;
-- synopsys translate_on

entity my_dcm2 is
   port ( CLKIN_IN        : in    std_logic; 
          RST_IN          : in    std_logic; 
          CLKFX_OUT       : out   std_logic; 
          CLKIN_IBUFG_OUT : out   std_logic; 
          LOCKED_OUT      : out   std_logic);
end my_dcm2;

architecture BEHAVIORAL of my_dcm2 is
   signal CLKFX_BUF       : std_logic;
   signal CLKIN_IBUFG     : std_logic;
   signal GND             : std_logic;
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   
   component IBUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   
   -- Period Jitter (unit interval) for block DCM_INST = 0.04 UI
   -- Period Jitter (Peak-to-Peak) for block DCM_INST = 1.28 ns
   component DCM
      generic( CLK_FEEDBACK : string :=  "1X";
               CLKDV_DIVIDE : real :=  2.000000;
               CLKFX_DIVIDE : integer :=  1;
               CLKFX_MULTIPLY : integer :=  4;
               CLKIN_DIVIDE_BY_2 : boolean :=  FALSE;
               CLKIN_PERIOD : real :=  0.000000;
               CLKOUT_PHASE_SHIFT : string :=  "NONE";
               DESKEW_ADJUST : string :=  "SYSTEM_SYNCHRONOUS";
               DFS_FREQUENCY_MODE : string :=  "LOW";
               DLL_FREQUENCY_MODE : string :=  "LOW";
               DUTY_CYCLE_CORRECTION : boolean :=  TRUE;
               FACTORY_JF : bit_vector :=  x"C080";
               PHASE_SHIFT : integer :=  0;
               STARTUP_WAIT : boolean :=  FALSE;
               DSS_MODE : string :=  "NONE");
      port ( CLKIN    : in    std_logic; 
             CLKFB    : in    std_logic; 
             RST      : in    std_logic; 
             PSEN     : in    std_logic; 
             PSINCDEC : in    std_logic; 
             PSCLK    : in    std_logic; 
             DSSEN    : in    std_logic; 
             CLK0     : out   std_logic; 
             CLK90    : out   std_logic; 
             CLK180   : out   std_logic; 
             CLK270   : out   std_logic; 
             CLKDV    : out   std_logic; 
             CLK2X    : out   std_logic; 
             CLK2X180 : out   std_logic; 
             CLKFX    : out   std_logic; 
             CLKFX180 : out   std_logic; 
             STATUS   : out   std_logic_vector (7 downto 0); 
             LOCKED   : out   std_logic; 
             PSDONE   : out   std_logic);
   end component;
   
begin
   GND <= '0';
   CLKIN_IBUFG_OUT <= CLKIN_IBUFG;
   CLKFX_BUFG_INST : BUFG
      port map (I=>CLKFX_BUF,
                O=>CLKFX_OUT);
   
--   CLKIN_IBUFG_INST : IBUFG
--      port map (I=>CLKIN_IN,
--                O=>CLKIN_IBUFG);
   
   DCM_INST : DCM
   generic map( CLK_FEEDBACK => "NONE",
            CLKDV_DIVIDE => 2.000000,
            CLKFX_DIVIDE => 11,
            CLKFX_MULTIPLY => 7,
            CLKIN_DIVIDE_BY_2 => FALSE,
            CLKIN_PERIOD => 22.222200,
            CLKOUT_PHASE_SHIFT => "NONE",
            DESKEW_ADJUST => "SYSTEM_SYNCHRONOUS",
            DFS_FREQUENCY_MODE => "LOW",
            DLL_FREQUENCY_MODE => "LOW",
            DUTY_CYCLE_CORRECTION => TRUE,
            FACTORY_JF => x"C080",
            PHASE_SHIFT => 0,
            STARTUP_WAIT => FALSE)
      port map (CLKFB=>GND,
--                CLKIN=>CLKIN_IBUFG,
                CLKIN=>CLKIN_IN,
                DSSEN=>GND,
                PSCLK=>GND,
                PSEN=>GND,
                PSINCDEC=>GND,
                RST=>RST_IN,
                CLKDV=>open,
                CLKFX=>CLKFX_BUF,
                CLKFX180=>open,
                CLK0=>open,
                CLK2X=>open,
                CLK2X180=>open,
                CLK90=>open,
                CLK180=>open,
                CLK270=>open,
                LOCKED=>LOCKED_OUT,
                PSDONE=>open,
                STATUS=>open);
   
end BEHAVIORAL;


