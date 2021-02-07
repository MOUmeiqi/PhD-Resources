----------------------------------------------------------------------------- 
-- Altera DSP Builder Advanced Flow Tools Release Version 13.0sp1
-- Quartus II development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2013 Altera Corporation.  All rights reserved.    
-- Your use of  Altera  Corporation's design tools,  logic functions and other 
-- software and tools,  and its AMPP  partner logic functions, and  any output 
-- files  any of the  foregoing  device programming or simulation files),  and 
-- any associated  documentation or information are expressly subject  to  the 
-- terms and conditions  of the Altera Program License Subscription Agreement, 
-- Altera  MegaCore  Function  License  Agreement, or other applicable license 
-- agreement,  including,  without limitation,  that your use  is for the sole 
-- purpose of  programming  logic  devices  manufactured by Altera and sold by 
-- Altera or its authorized  distributors.  Please  refer  to  the  applicable 
-- agreement for further details.
----------------------------------------------------------------------------- 

-- VHDL created from FIR_3MHZ_low_rtl
-- VHDL created on Mon Aug 05 11:25:32 2013


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY lpm;
USE lpm.lpm_components.all;

-- Text written from d:/SJ/nightly/13.0sp1/232/w32/p4/ip/aion/src/mip_common/hw_model.cpp:1303
entity FIR_3MHZ_low_rtl is
    port (
        xIn_v : in std_logic_vector(0 downto 0);
        xIn_c : in std_logic_vector(7 downto 0);
        xIn_0 : in std_logic_vector(13 downto 0);
        xOut_v : out std_logic_vector(0 downto 0);
        xOut_c : out std_logic_vector(7 downto 0);
        xOut_0 : out std_logic_vector(36 downto 0);
        clk : in std_logic;
        areset : in std_logic
        );
end;

architecture normal of FIR_3MHZ_low_rtl is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name NOT_GATE_PUSH_BACK OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410";

    signal GND_q : std_logic_vector (0 downto 0);
    signal VCC_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_11_q : std_logic_vector (0 downto 0);
    signal d_u0_m0_wo0_memread_q_12_q : std_logic_vector (0 downto 0);
    type u0_m0_wo0_cma0_a_type is array(0 to 31) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma0_a : u0_m0_wo0_cma0_a_type;
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_cma0_a : signal is true;
    type u0_m0_wo0_cma0_c_type is array(0 to 31) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma0_c : u0_m0_wo0_cma0_c_type;
    attribute preserve of u0_m0_wo0_cma0_c : signal is true;
    type u0_m0_wo0_cma0_d_type is array(0 to 31) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma0_d : u0_m0_wo0_cma0_d_type;
    attribute preserve of u0_m0_wo0_cma0_d : signal is true;
    type u0_m0_wo0_cma0_r_type is array(0 to 31) of SIGNED(16 downto 0);
    signal u0_m0_wo0_cma0_r : u0_m0_wo0_cma0_r_type;
    type u0_m0_wo0_cma0_p_type is array(0 to 31) of SIGNED(30 downto 0);
    signal u0_m0_wo0_cma0_p : u0_m0_wo0_cma0_p_type;
    type u0_m0_wo0_cma0_w_type is array(0 to 31) of SIGNED(35 downto 0);
    signal u0_m0_wo0_cma0_w : u0_m0_wo0_cma0_w_type;
    type u0_m0_wo0_cma0_x_type is array(0 to 31) of SIGNED(35 downto 0);
    signal u0_m0_wo0_cma0_x : u0_m0_wo0_cma0_x_type;
    type u0_m0_wo0_cma0_y_type is array(0 to 31) of SIGNED(35 downto 0);
    signal u0_m0_wo0_cma0_y : u0_m0_wo0_cma0_y_type;
    type u0_m0_wo0_cma0_romtype is array(0 to 7) of SIGNED(16 downto 0);
    signal u0_m0_wo0_cma0_k0 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(4634,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k1 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(3469,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k2 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k3 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-3932,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k4 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-5959,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k5 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-4537,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k6 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k7 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(5363,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k8 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(8343,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k9 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(6555,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k10 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k11 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-8428,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k12 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-13906,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k13 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-11800,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k14 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k15 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(19667,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k16 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(41721,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k17 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(59002,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k18 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(65535,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k19 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(59002,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k20 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(41721,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k21 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(19667,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k22 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k23 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-11800,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k24 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-13906,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k25 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-8428,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k26 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k27 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(6555,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k28 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(8343,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k29 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(5363,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k30 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    signal u0_m0_wo0_cma0_k31 : u0_m0_wo0_cma0_romtype := (
        0 => TO_SIGNED(-4537,17),
        others => (others => '0'));
    type u0_m0_wo0_cma0_s_type is array(0 to 31) of SIGNED(35 downto 0);
    signal u0_m0_wo0_cma0_s : u0_m0_wo0_cma0_s_type;
    signal u0_m0_wo0_cma0_q : std_logic_vector(35 downto 0);
    type u0_m0_wo0_cma1_a_type is array(0 to 5) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_a : u0_m0_wo0_cma1_a_type;
    attribute preserve of u0_m0_wo0_cma1_a : signal is true;
    type u0_m0_wo0_cma1_c_type is array(0 to 5) of UNSIGNED(2 downto 0);
    signal u0_m0_wo0_cma1_c : u0_m0_wo0_cma1_c_type;
    attribute preserve of u0_m0_wo0_cma1_c : signal is true;
    type u0_m0_wo0_cma1_d_type is array(0 to 5) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_d : u0_m0_wo0_cma1_d_type;
    attribute preserve of u0_m0_wo0_cma1_d : signal is true;
    type u0_m0_wo0_cma1_r_type is array(0 to 5) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_r : u0_m0_wo0_cma1_r_type;
    type u0_m0_wo0_cma1_p_type is array(0 to 5) of SIGNED(27 downto 0);
    signal u0_m0_wo0_cma1_p : u0_m0_wo0_cma1_p_type;
    type u0_m0_wo0_cma1_w_type is array(0 to 5) of SIGNED(30 downto 0);
    signal u0_m0_wo0_cma1_w : u0_m0_wo0_cma1_w_type;
    type u0_m0_wo0_cma1_x_type is array(0 to 5) of SIGNED(30 downto 0);
    signal u0_m0_wo0_cma1_x : u0_m0_wo0_cma1_x_type;
    type u0_m0_wo0_cma1_y_type is array(0 to 5) of SIGNED(30 downto 0);
    signal u0_m0_wo0_cma1_y : u0_m0_wo0_cma1_y_type;
    type u0_m0_wo0_cma1_romtype is array(0 to 7) of SIGNED(13 downto 0);
    signal u0_m0_wo0_cma1_k0 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-5959,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k1 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(-3932,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k2 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(0,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k3 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(3469,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k4 : u0_m0_wo0_cma1_romtype := (
        0 => TO_SIGNED(4634,14),
        others => (others => '0'));
    signal u0_m0_wo0_cma1_k5 : u0_m0_wo0_cma1_romtype := (
        others => (others => '0'));
    type u0_m0_wo0_cma1_s_type is array(0 to 5) of SIGNED(30 downto 0);
    signal u0_m0_wo0_cma1_s : u0_m0_wo0_cma1_s_type;
    signal u0_m0_wo0_cma1_q : std_logic_vector(30 downto 0);
    signal u0_m0_wo0_mtree_add0_0_a : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add0_0_b : std_logic_vector(36 downto 0);
    signal u0_m0_wo0_mtree_add0_0_o : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_mtree_add0_0_q : std_logic_vector (36 downto 0);
    signal u0_m0_wo0_oseq_gated_reg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_mem_reset0 : std_logic;
    signal u0_m0_wo0_wi0_delayr32_replace_mem_ia : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_mem_aa : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_mem_ab : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_mem_iq : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_mem_q : std_logic_vector (13 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_rdcnt_q : std_logic_vector(4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_rdcnt_i : unsigned(4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_rdcnt_eq : std_logic;
    signal u0_m0_wo0_wi0_delayr32_replace_rdreg_q : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_mem_top_q : std_logic_vector (5 downto 0);
    signal u0_m0_wo0_wi0_delayr32_cmpReg_q : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_sticky_ena_q : std_logic_vector (0 downto 0);
    attribute preserve of u0_m0_wo0_wi0_delayr32_sticky_ena_q : signal is true;
    signal u0_m0_wo0_wi0_delayr32_replace_rdmux_s : std_logic_vector (0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_replace_rdmux_q : std_logic_vector (4 downto 0);
    signal u0_m0_wo0_wi0_delayr32_notEnable_a : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_notEnable_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_enaAnd_a : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_enaAnd_b : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_enaAnd_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_cmp_a : std_logic_vector(5 downto 0);
    signal u0_m0_wo0_wi0_delayr32_cmp_b : std_logic_vector(5 downto 0);
    signal u0_m0_wo0_wi0_delayr32_cmp_q : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_nor_a : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_nor_b : std_logic_vector(0 downto 0);
    signal u0_m0_wo0_wi0_delayr32_nor_q : std_logic_vector(0 downto 0);
begin


	--VCC(CONSTANT,1)@0
    VCC_q <= "1";

	--u0_m0_wo0_wi0_delayr32_notEnable(LOGICAL,98)
    u0_m0_wo0_wi0_delayr32_notEnable_a <= xIn_v;
    u0_m0_wo0_wi0_delayr32_notEnable_q <= not u0_m0_wo0_wi0_delayr32_notEnable_a;

	--u0_m0_wo0_wi0_delayr32_nor(LOGICAL,99)
    u0_m0_wo0_wi0_delayr32_nor_a <= u0_m0_wo0_wi0_delayr32_notEnable_q;
    u0_m0_wo0_wi0_delayr32_nor_b <= u0_m0_wo0_wi0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi0_delayr32_nor_q <= not (u0_m0_wo0_wi0_delayr32_nor_a or u0_m0_wo0_wi0_delayr32_nor_b);

	--u0_m0_wo0_wi0_delayr32_mem_top(CONSTANT,95)
    u0_m0_wo0_wi0_delayr32_mem_top_q <= "011110";

	--u0_m0_wo0_wi0_delayr32_cmp(LOGICAL,96)
    u0_m0_wo0_wi0_delayr32_cmp_a <= u0_m0_wo0_wi0_delayr32_mem_top_q;
    u0_m0_wo0_wi0_delayr32_cmp_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_delayr32_replace_rdmux_q);
    u0_m0_wo0_wi0_delayr32_cmp_q <= "1" when u0_m0_wo0_wi0_delayr32_cmp_a = u0_m0_wo0_wi0_delayr32_cmp_b else "0";

	--u0_m0_wo0_wi0_delayr32_cmpReg(REG,97)
    u0_m0_wo0_wi0_delayr32_cmpReg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr32_cmpReg_q <= "0";
        ELSIF rising_edge(clk) THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi0_delayr32_cmpReg_q <= u0_m0_wo0_wi0_delayr32_cmp_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr32_sticky_ena(REG,100)
    u0_m0_wo0_wi0_delayr32_sticky_ena: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr32_sticky_ena_q <= "0";
        ELSIF rising_edge(clk) THEN
            IF (u0_m0_wo0_wi0_delayr32_nor_q = "1") THEN
                u0_m0_wo0_wi0_delayr32_sticky_ena_q <= u0_m0_wo0_wi0_delayr32_cmpReg_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr32_enaAnd(LOGICAL,101)
    u0_m0_wo0_wi0_delayr32_enaAnd_a <= u0_m0_wo0_wi0_delayr32_sticky_ena_q;
    u0_m0_wo0_wi0_delayr32_enaAnd_b <= xIn_v;
    u0_m0_wo0_wi0_delayr32_enaAnd_q <= u0_m0_wo0_wi0_delayr32_enaAnd_a and u0_m0_wo0_wi0_delayr32_enaAnd_b;

	--u0_m0_wo0_wi0_delayr32_replace_rdcnt(COUNTER,91)
    -- every=1, low=0, high=30, step=1, init=1
    u0_m0_wo0_wi0_delayr32_replace_rdcnt: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr32_replace_rdcnt_i <= TO_UNSIGNED(1,5);
            u0_m0_wo0_wi0_delayr32_replace_rdcnt_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                    IF u0_m0_wo0_wi0_delayr32_replace_rdcnt_i = 29 THEN
                      u0_m0_wo0_wi0_delayr32_replace_rdcnt_eq <= '1';
                    ELSE
                      u0_m0_wo0_wi0_delayr32_replace_rdcnt_eq <= '0';
                    END IF;
                    IF (u0_m0_wo0_wi0_delayr32_replace_rdcnt_eq = '1') THEN
                        u0_m0_wo0_wi0_delayr32_replace_rdcnt_i <= u0_m0_wo0_wi0_delayr32_replace_rdcnt_i - 30;
                    ELSE
                        u0_m0_wo0_wi0_delayr32_replace_rdcnt_i <= u0_m0_wo0_wi0_delayr32_replace_rdcnt_i + 1;
                    END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_delayr32_replace_rdcnt_q <= STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_delayr32_replace_rdcnt_i,5));


	--u0_m0_wo0_wi0_delayr32_replace_rdreg(REG,92)
    u0_m0_wo0_wi0_delayr32_replace_rdreg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_delayr32_replace_rdreg_q <= "00000";
        ELSIF rising_edge(clk) THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_wi0_delayr32_replace_rdreg_q <= u0_m0_wo0_wi0_delayr32_replace_rdcnt_q;
            END IF;
        END IF;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr32_replace_rdmux(MUX,93)
    u0_m0_wo0_wi0_delayr32_replace_rdmux_s <= xIn_v;
    u0_m0_wo0_wi0_delayr32_replace_rdmux: PROCESS (u0_m0_wo0_wi0_delayr32_replace_rdmux_s, u0_m0_wo0_wi0_delayr32_replace_rdreg_q, u0_m0_wo0_wi0_delayr32_replace_rdcnt_q)
    BEGIN
            CASE u0_m0_wo0_wi0_delayr32_replace_rdmux_s IS
                  WHEN "0" => u0_m0_wo0_wi0_delayr32_replace_rdmux_q <= u0_m0_wo0_wi0_delayr32_replace_rdreg_q;
                  WHEN "1" => u0_m0_wo0_wi0_delayr32_replace_rdmux_q <= u0_m0_wo0_wi0_delayr32_replace_rdcnt_q;
                  WHEN OTHERS => u0_m0_wo0_wi0_delayr32_replace_rdmux_q <= (others => '0');
            END CASE;
    END PROCESS;


	--u0_m0_wo0_wi0_delayr32_replace_mem(DUALMEM,90)
    u0_m0_wo0_wi0_delayr32_replace_mem_ia <= xIn_0;
    u0_m0_wo0_wi0_delayr32_replace_mem_aa <= u0_m0_wo0_wi0_delayr32_replace_rdreg_q;
    u0_m0_wo0_wi0_delayr32_replace_mem_ab <= u0_m0_wo0_wi0_delayr32_replace_rdmux_q;
    u0_m0_wo0_wi0_delayr32_replace_mem_dmem : altsyncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 14,
        widthad_a => 5,
        numwords_a => 31,
        width_b => 14,
        widthad_b => 5,
        numwords_b => 31,
        lpm_type => "altsyncram",
        width_byteena_a => 1,
        indata_reg_b => "CLOCK0",
        wrcontrol_wraddress_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        address_reg_b => "CLOCK0",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => u0_m0_wo0_wi0_delayr32_enaAnd_q(0),
        clocken0 => '1',
        wren_a => xIn_v(0),
        clock0 => clk,
        aclr1 => u0_m0_wo0_wi0_delayr32_replace_mem_reset0,
        clock1 => clk,
        address_b => u0_m0_wo0_wi0_delayr32_replace_mem_ab,
        -- data_b => (others => '0'),
        q_b => u0_m0_wo0_wi0_delayr32_replace_mem_iq,
        address_a => u0_m0_wo0_wi0_delayr32_replace_mem_aa,
        data_a => u0_m0_wo0_wi0_delayr32_replace_mem_ia
    );
    u0_m0_wo0_wi0_delayr32_replace_mem_reset0 <= areset;
        u0_m0_wo0_wi0_delayr32_replace_mem_q <= u0_m0_wo0_wi0_delayr32_replace_mem_iq(13 downto 0);

	--d_u0_m0_wo0_memread_q_11(DELAY,88)@10
    d_u0_m0_wo0_memread_q_11 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => xIn_v, xout => d_u0_m0_wo0_memread_q_11_q, clk => clk, aclr => areset );

	--xIn(PORTIN,2)@10

	--u0_m0_wo0_cma1(CHAINMULTADD,82)@10
--altera synthesis_off
    u0_m0_wo0_cma1_k0 <= (
        0 => TO_SIGNED(-5959,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k1 <= (
        0 => TO_SIGNED(-3932,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k2 <= (
        0 => TO_SIGNED(0,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k3 <= (
        0 => TO_SIGNED(3469,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k4 <= (
        0 => TO_SIGNED(4634,14),
        others => (others => '0'));
    u0_m0_wo0_cma1_k5 <= (
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_cma1_r(0) <= u0_m0_wo0_cma1_k0(TO_INTEGER(u0_m0_wo0_cma1_c(0)));
    u0_m0_wo0_cma1_r(1) <= u0_m0_wo0_cma1_k1(TO_INTEGER(u0_m0_wo0_cma1_c(1)));
    u0_m0_wo0_cma1_r(2) <= u0_m0_wo0_cma1_k2(TO_INTEGER(u0_m0_wo0_cma1_c(2)));
    u0_m0_wo0_cma1_r(3) <= u0_m0_wo0_cma1_k3(TO_INTEGER(u0_m0_wo0_cma1_c(3)));
    u0_m0_wo0_cma1_r(4) <= u0_m0_wo0_cma1_k4(TO_INTEGER(u0_m0_wo0_cma1_c(4)));
    u0_m0_wo0_cma1_r(5) <= u0_m0_wo0_cma1_k5(TO_INTEGER(u0_m0_wo0_cma1_c(5)));
    u0_m0_wo0_cma1_p(0) <= u0_m0_wo0_cma1_a(0) * u0_m0_wo0_cma1_r(0);
    u0_m0_wo0_cma1_p(1) <= u0_m0_wo0_cma1_a(1) * u0_m0_wo0_cma1_r(1);
    u0_m0_wo0_cma1_p(2) <= u0_m0_wo0_cma1_a(2) * u0_m0_wo0_cma1_r(2);
    u0_m0_wo0_cma1_p(3) <= u0_m0_wo0_cma1_a(3) * u0_m0_wo0_cma1_r(3);
    u0_m0_wo0_cma1_p(4) <= u0_m0_wo0_cma1_a(4) * u0_m0_wo0_cma1_r(4);
    u0_m0_wo0_cma1_p(5) <= u0_m0_wo0_cma1_a(5) * u0_m0_wo0_cma1_r(5);
    u0_m0_wo0_cma1_w(0) <= RESIZE(u0_m0_wo0_cma1_p(0),31);
    u0_m0_wo0_cma1_w(1) <= RESIZE(u0_m0_wo0_cma1_p(1),31);
    u0_m0_wo0_cma1_w(2) <= RESIZE(u0_m0_wo0_cma1_p(2),31);
    u0_m0_wo0_cma1_w(3) <= RESIZE(u0_m0_wo0_cma1_p(3),31);
    u0_m0_wo0_cma1_w(4) <= RESIZE(u0_m0_wo0_cma1_p(4),31);
    u0_m0_wo0_cma1_w(5) <= RESIZE(u0_m0_wo0_cma1_p(5),31);
    u0_m0_wo0_cma1_x(0) <= u0_m0_wo0_cma1_w(0);
    u0_m0_wo0_cma1_x(1) <= u0_m0_wo0_cma1_w(1);
    u0_m0_wo0_cma1_x(2) <= u0_m0_wo0_cma1_w(2);
    u0_m0_wo0_cma1_x(3) <= u0_m0_wo0_cma1_w(3);
    u0_m0_wo0_cma1_x(4) <= u0_m0_wo0_cma1_w(4);
    u0_m0_wo0_cma1_x(5) <= u0_m0_wo0_cma1_w(5);
    u0_m0_wo0_cma1_y(0) <= u0_m0_wo0_cma1_s(1) + u0_m0_wo0_cma1_x(0);
    u0_m0_wo0_cma1_y(1) <= u0_m0_wo0_cma1_s(2) + u0_m0_wo0_cma1_x(1);
    u0_m0_wo0_cma1_y(2) <= u0_m0_wo0_cma1_s(3) + u0_m0_wo0_cma1_x(2);
    u0_m0_wo0_cma1_y(3) <= u0_m0_wo0_cma1_s(4) + u0_m0_wo0_cma1_x(3);
    u0_m0_wo0_cma1_y(4) <= u0_m0_wo0_cma1_s(5) + u0_m0_wo0_cma1_x(4);
    u0_m0_wo0_cma1_y(5) <= u0_m0_wo0_cma1_x(5);
    u0_m0_wo0_cma1_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma1_a <= (others => (others => '0'));
            u0_m0_wo0_cma1_c <= (others => (others => '0'));
            u0_m0_wo0_cma1_d <= (others => (others => '0'));
            u0_m0_wo0_cma1_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_cma1_a(0) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr32_replace_mem_q),14);
                u0_m0_wo0_cma1_a(1) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr32_replace_mem_q),14);
                u0_m0_wo0_cma1_a(2) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr32_replace_mem_q),14);
                u0_m0_wo0_cma1_a(3) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr32_replace_mem_q),14);
                u0_m0_wo0_cma1_a(4) <= RESIZE(SIGNED(u0_m0_wo0_wi0_delayr32_replace_mem_q),14);
                u0_m0_wo0_cma1_a(5) <= (others => '0');
                u0_m0_wo0_cma1_c(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma1_c(5) <= (others => '0');
                u0_m0_wo0_cma1_d(0) <= u0_m0_wo0_cma1_a(0);
                u0_m0_wo0_cma1_d(1) <= u0_m0_wo0_cma1_a(1);
                u0_m0_wo0_cma1_d(2) <= u0_m0_wo0_cma1_a(2);
                u0_m0_wo0_cma1_d(3) <= u0_m0_wo0_cma1_a(3);
                u0_m0_wo0_cma1_d(4) <= u0_m0_wo0_cma1_a(4);
                u0_m0_wo0_cma1_d(5) <= u0_m0_wo0_cma1_a(5);
            END IF;
            IF (d_u0_m0_wo0_memread_q_11_q = "1") THEN
                u0_m0_wo0_cma1_s(0) <= u0_m0_wo0_cma1_y(0);
                u0_m0_wo0_cma1_s(1) <= u0_m0_wo0_cma1_y(1);
                u0_m0_wo0_cma1_s(2) <= u0_m0_wo0_cma1_y(2);
                u0_m0_wo0_cma1_s(3) <= u0_m0_wo0_cma1_y(3);
                u0_m0_wo0_cma1_s(4) <= u0_m0_wo0_cma1_y(4);
                u0_m0_wo0_cma1_s(5) <= u0_m0_wo0_cma1_y(5);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma1_delay : dspba_delay
    GENERIC MAP (width => 31, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma1_s(0)(30 downto 0)), xout => u0_m0_wo0_cma1_q, clk => clk, aclr => areset);

	--u0_m0_wo0_cma0(CHAINMULTADD,81)@10
--altera synthesis_off
    u0_m0_wo0_cma0_k0 <= (
        0 => TO_SIGNED(4634,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k1 <= (
        0 => TO_SIGNED(3469,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k2 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k3 <= (
        0 => TO_SIGNED(-3932,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k4 <= (
        0 => TO_SIGNED(-5959,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k5 <= (
        0 => TO_SIGNED(-4537,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k6 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k7 <= (
        0 => TO_SIGNED(5363,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k8 <= (
        0 => TO_SIGNED(8343,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k9 <= (
        0 => TO_SIGNED(6555,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k10 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k11 <= (
        0 => TO_SIGNED(-8428,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k12 <= (
        0 => TO_SIGNED(-13906,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k13 <= (
        0 => TO_SIGNED(-11800,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k14 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k15 <= (
        0 => TO_SIGNED(19667,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k16 <= (
        0 => TO_SIGNED(41721,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k17 <= (
        0 => TO_SIGNED(59002,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k18 <= (
        0 => TO_SIGNED(65535,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k19 <= (
        0 => TO_SIGNED(59002,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k20 <= (
        0 => TO_SIGNED(41721,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k21 <= (
        0 => TO_SIGNED(19667,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k22 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k23 <= (
        0 => TO_SIGNED(-11800,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k24 <= (
        0 => TO_SIGNED(-13906,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k25 <= (
        0 => TO_SIGNED(-8428,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k26 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k27 <= (
        0 => TO_SIGNED(6555,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k28 <= (
        0 => TO_SIGNED(8343,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k29 <= (
        0 => TO_SIGNED(5363,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k30 <= (
        0 => TO_SIGNED(0,17),
        others => (others => '0'));
    u0_m0_wo0_cma0_k31 <= (
        0 => TO_SIGNED(-4537,17),
        others => (others => '0'));
--altera synthesis_on
    u0_m0_wo0_cma0_r(0) <= u0_m0_wo0_cma0_k0(TO_INTEGER(u0_m0_wo0_cma0_c(0)));
    u0_m0_wo0_cma0_r(1) <= u0_m0_wo0_cma0_k1(TO_INTEGER(u0_m0_wo0_cma0_c(1)));
    u0_m0_wo0_cma0_r(2) <= u0_m0_wo0_cma0_k2(TO_INTEGER(u0_m0_wo0_cma0_c(2)));
    u0_m0_wo0_cma0_r(3) <= u0_m0_wo0_cma0_k3(TO_INTEGER(u0_m0_wo0_cma0_c(3)));
    u0_m0_wo0_cma0_r(4) <= u0_m0_wo0_cma0_k4(TO_INTEGER(u0_m0_wo0_cma0_c(4)));
    u0_m0_wo0_cma0_r(5) <= u0_m0_wo0_cma0_k5(TO_INTEGER(u0_m0_wo0_cma0_c(5)));
    u0_m0_wo0_cma0_r(6) <= u0_m0_wo0_cma0_k6(TO_INTEGER(u0_m0_wo0_cma0_c(6)));
    u0_m0_wo0_cma0_r(7) <= u0_m0_wo0_cma0_k7(TO_INTEGER(u0_m0_wo0_cma0_c(7)));
    u0_m0_wo0_cma0_r(8) <= u0_m0_wo0_cma0_k8(TO_INTEGER(u0_m0_wo0_cma0_c(8)));
    u0_m0_wo0_cma0_r(9) <= u0_m0_wo0_cma0_k9(TO_INTEGER(u0_m0_wo0_cma0_c(9)));
    u0_m0_wo0_cma0_r(10) <= u0_m0_wo0_cma0_k10(TO_INTEGER(u0_m0_wo0_cma0_c(10)));
    u0_m0_wo0_cma0_r(11) <= u0_m0_wo0_cma0_k11(TO_INTEGER(u0_m0_wo0_cma0_c(11)));
    u0_m0_wo0_cma0_r(12) <= u0_m0_wo0_cma0_k12(TO_INTEGER(u0_m0_wo0_cma0_c(12)));
    u0_m0_wo0_cma0_r(13) <= u0_m0_wo0_cma0_k13(TO_INTEGER(u0_m0_wo0_cma0_c(13)));
    u0_m0_wo0_cma0_r(14) <= u0_m0_wo0_cma0_k14(TO_INTEGER(u0_m0_wo0_cma0_c(14)));
    u0_m0_wo0_cma0_r(15) <= u0_m0_wo0_cma0_k15(TO_INTEGER(u0_m0_wo0_cma0_c(15)));
    u0_m0_wo0_cma0_r(16) <= u0_m0_wo0_cma0_k16(TO_INTEGER(u0_m0_wo0_cma0_c(16)));
    u0_m0_wo0_cma0_r(17) <= u0_m0_wo0_cma0_k17(TO_INTEGER(u0_m0_wo0_cma0_c(17)));
    u0_m0_wo0_cma0_r(18) <= u0_m0_wo0_cma0_k18(TO_INTEGER(u0_m0_wo0_cma0_c(18)));
    u0_m0_wo0_cma0_r(19) <= u0_m0_wo0_cma0_k19(TO_INTEGER(u0_m0_wo0_cma0_c(19)));
    u0_m0_wo0_cma0_r(20) <= u0_m0_wo0_cma0_k20(TO_INTEGER(u0_m0_wo0_cma0_c(20)));
    u0_m0_wo0_cma0_r(21) <= u0_m0_wo0_cma0_k21(TO_INTEGER(u0_m0_wo0_cma0_c(21)));
    u0_m0_wo0_cma0_r(22) <= u0_m0_wo0_cma0_k22(TO_INTEGER(u0_m0_wo0_cma0_c(22)));
    u0_m0_wo0_cma0_r(23) <= u0_m0_wo0_cma0_k23(TO_INTEGER(u0_m0_wo0_cma0_c(23)));
    u0_m0_wo0_cma0_r(24) <= u0_m0_wo0_cma0_k24(TO_INTEGER(u0_m0_wo0_cma0_c(24)));
    u0_m0_wo0_cma0_r(25) <= u0_m0_wo0_cma0_k25(TO_INTEGER(u0_m0_wo0_cma0_c(25)));
    u0_m0_wo0_cma0_r(26) <= u0_m0_wo0_cma0_k26(TO_INTEGER(u0_m0_wo0_cma0_c(26)));
    u0_m0_wo0_cma0_r(27) <= u0_m0_wo0_cma0_k27(TO_INTEGER(u0_m0_wo0_cma0_c(27)));
    u0_m0_wo0_cma0_r(28) <= u0_m0_wo0_cma0_k28(TO_INTEGER(u0_m0_wo0_cma0_c(28)));
    u0_m0_wo0_cma0_r(29) <= u0_m0_wo0_cma0_k29(TO_INTEGER(u0_m0_wo0_cma0_c(29)));
    u0_m0_wo0_cma0_r(30) <= u0_m0_wo0_cma0_k30(TO_INTEGER(u0_m0_wo0_cma0_c(30)));
    u0_m0_wo0_cma0_r(31) <= u0_m0_wo0_cma0_k31(TO_INTEGER(u0_m0_wo0_cma0_c(31)));
    u0_m0_wo0_cma0_p(0) <= u0_m0_wo0_cma0_a(0) * u0_m0_wo0_cma0_r(0);
    u0_m0_wo0_cma0_p(1) <= u0_m0_wo0_cma0_a(1) * u0_m0_wo0_cma0_r(1);
    u0_m0_wo0_cma0_p(2) <= u0_m0_wo0_cma0_a(2) * u0_m0_wo0_cma0_r(2);
    u0_m0_wo0_cma0_p(3) <= u0_m0_wo0_cma0_a(3) * u0_m0_wo0_cma0_r(3);
    u0_m0_wo0_cma0_p(4) <= u0_m0_wo0_cma0_a(4) * u0_m0_wo0_cma0_r(4);
    u0_m0_wo0_cma0_p(5) <= u0_m0_wo0_cma0_a(5) * u0_m0_wo0_cma0_r(5);
    u0_m0_wo0_cma0_p(6) <= u0_m0_wo0_cma0_a(6) * u0_m0_wo0_cma0_r(6);
    u0_m0_wo0_cma0_p(7) <= u0_m0_wo0_cma0_a(7) * u0_m0_wo0_cma0_r(7);
    u0_m0_wo0_cma0_p(8) <= u0_m0_wo0_cma0_a(8) * u0_m0_wo0_cma0_r(8);
    u0_m0_wo0_cma0_p(9) <= u0_m0_wo0_cma0_a(9) * u0_m0_wo0_cma0_r(9);
    u0_m0_wo0_cma0_p(10) <= u0_m0_wo0_cma0_a(10) * u0_m0_wo0_cma0_r(10);
    u0_m0_wo0_cma0_p(11) <= u0_m0_wo0_cma0_a(11) * u0_m0_wo0_cma0_r(11);
    u0_m0_wo0_cma0_p(12) <= u0_m0_wo0_cma0_a(12) * u0_m0_wo0_cma0_r(12);
    u0_m0_wo0_cma0_p(13) <= u0_m0_wo0_cma0_a(13) * u0_m0_wo0_cma0_r(13);
    u0_m0_wo0_cma0_p(14) <= u0_m0_wo0_cma0_a(14) * u0_m0_wo0_cma0_r(14);
    u0_m0_wo0_cma0_p(15) <= u0_m0_wo0_cma0_a(15) * u0_m0_wo0_cma0_r(15);
    u0_m0_wo0_cma0_p(16) <= u0_m0_wo0_cma0_a(16) * u0_m0_wo0_cma0_r(16);
    u0_m0_wo0_cma0_p(17) <= u0_m0_wo0_cma0_a(17) * u0_m0_wo0_cma0_r(17);
    u0_m0_wo0_cma0_p(18) <= u0_m0_wo0_cma0_a(18) * u0_m0_wo0_cma0_r(18);
    u0_m0_wo0_cma0_p(19) <= u0_m0_wo0_cma0_a(19) * u0_m0_wo0_cma0_r(19);
    u0_m0_wo0_cma0_p(20) <= u0_m0_wo0_cma0_a(20) * u0_m0_wo0_cma0_r(20);
    u0_m0_wo0_cma0_p(21) <= u0_m0_wo0_cma0_a(21) * u0_m0_wo0_cma0_r(21);
    u0_m0_wo0_cma0_p(22) <= u0_m0_wo0_cma0_a(22) * u0_m0_wo0_cma0_r(22);
    u0_m0_wo0_cma0_p(23) <= u0_m0_wo0_cma0_a(23) * u0_m0_wo0_cma0_r(23);
    u0_m0_wo0_cma0_p(24) <= u0_m0_wo0_cma0_a(24) * u0_m0_wo0_cma0_r(24);
    u0_m0_wo0_cma0_p(25) <= u0_m0_wo0_cma0_a(25) * u0_m0_wo0_cma0_r(25);
    u0_m0_wo0_cma0_p(26) <= u0_m0_wo0_cma0_a(26) * u0_m0_wo0_cma0_r(26);
    u0_m0_wo0_cma0_p(27) <= u0_m0_wo0_cma0_a(27) * u0_m0_wo0_cma0_r(27);
    u0_m0_wo0_cma0_p(28) <= u0_m0_wo0_cma0_a(28) * u0_m0_wo0_cma0_r(28);
    u0_m0_wo0_cma0_p(29) <= u0_m0_wo0_cma0_a(29) * u0_m0_wo0_cma0_r(29);
    u0_m0_wo0_cma0_p(30) <= u0_m0_wo0_cma0_a(30) * u0_m0_wo0_cma0_r(30);
    u0_m0_wo0_cma0_p(31) <= u0_m0_wo0_cma0_a(31) * u0_m0_wo0_cma0_r(31);
    u0_m0_wo0_cma0_w(0) <= RESIZE(u0_m0_wo0_cma0_p(0),36);
    u0_m0_wo0_cma0_w(1) <= RESIZE(u0_m0_wo0_cma0_p(1),36);
    u0_m0_wo0_cma0_w(2) <= RESIZE(u0_m0_wo0_cma0_p(2),36);
    u0_m0_wo0_cma0_w(3) <= RESIZE(u0_m0_wo0_cma0_p(3),36);
    u0_m0_wo0_cma0_w(4) <= RESIZE(u0_m0_wo0_cma0_p(4),36);
    u0_m0_wo0_cma0_w(5) <= RESIZE(u0_m0_wo0_cma0_p(5),36);
    u0_m0_wo0_cma0_w(6) <= RESIZE(u0_m0_wo0_cma0_p(6),36);
    u0_m0_wo0_cma0_w(7) <= RESIZE(u0_m0_wo0_cma0_p(7),36);
    u0_m0_wo0_cma0_w(8) <= RESIZE(u0_m0_wo0_cma0_p(8),36);
    u0_m0_wo0_cma0_w(9) <= RESIZE(u0_m0_wo0_cma0_p(9),36);
    u0_m0_wo0_cma0_w(10) <= RESIZE(u0_m0_wo0_cma0_p(10),36);
    u0_m0_wo0_cma0_w(11) <= RESIZE(u0_m0_wo0_cma0_p(11),36);
    u0_m0_wo0_cma0_w(12) <= RESIZE(u0_m0_wo0_cma0_p(12),36);
    u0_m0_wo0_cma0_w(13) <= RESIZE(u0_m0_wo0_cma0_p(13),36);
    u0_m0_wo0_cma0_w(14) <= RESIZE(u0_m0_wo0_cma0_p(14),36);
    u0_m0_wo0_cma0_w(15) <= RESIZE(u0_m0_wo0_cma0_p(15),36);
    u0_m0_wo0_cma0_w(16) <= RESIZE(u0_m0_wo0_cma0_p(16),36);
    u0_m0_wo0_cma0_w(17) <= RESIZE(u0_m0_wo0_cma0_p(17),36);
    u0_m0_wo0_cma0_w(18) <= RESIZE(u0_m0_wo0_cma0_p(18),36);
    u0_m0_wo0_cma0_w(19) <= RESIZE(u0_m0_wo0_cma0_p(19),36);
    u0_m0_wo0_cma0_w(20) <= RESIZE(u0_m0_wo0_cma0_p(20),36);
    u0_m0_wo0_cma0_w(21) <= RESIZE(u0_m0_wo0_cma0_p(21),36);
    u0_m0_wo0_cma0_w(22) <= RESIZE(u0_m0_wo0_cma0_p(22),36);
    u0_m0_wo0_cma0_w(23) <= RESIZE(u0_m0_wo0_cma0_p(23),36);
    u0_m0_wo0_cma0_w(24) <= RESIZE(u0_m0_wo0_cma0_p(24),36);
    u0_m0_wo0_cma0_w(25) <= RESIZE(u0_m0_wo0_cma0_p(25),36);
    u0_m0_wo0_cma0_w(26) <= RESIZE(u0_m0_wo0_cma0_p(26),36);
    u0_m0_wo0_cma0_w(27) <= RESIZE(u0_m0_wo0_cma0_p(27),36);
    u0_m0_wo0_cma0_w(28) <= RESIZE(u0_m0_wo0_cma0_p(28),36);
    u0_m0_wo0_cma0_w(29) <= RESIZE(u0_m0_wo0_cma0_p(29),36);
    u0_m0_wo0_cma0_w(30) <= RESIZE(u0_m0_wo0_cma0_p(30),36);
    u0_m0_wo0_cma0_w(31) <= RESIZE(u0_m0_wo0_cma0_p(31),36);
    u0_m0_wo0_cma0_x(0) <= u0_m0_wo0_cma0_w(0);
    u0_m0_wo0_cma0_x(1) <= u0_m0_wo0_cma0_w(1);
    u0_m0_wo0_cma0_x(2) <= u0_m0_wo0_cma0_w(2);
    u0_m0_wo0_cma0_x(3) <= u0_m0_wo0_cma0_w(3);
    u0_m0_wo0_cma0_x(4) <= u0_m0_wo0_cma0_w(4);
    u0_m0_wo0_cma0_x(5) <= u0_m0_wo0_cma0_w(5);
    u0_m0_wo0_cma0_x(6) <= u0_m0_wo0_cma0_w(6);
    u0_m0_wo0_cma0_x(7) <= u0_m0_wo0_cma0_w(7);
    u0_m0_wo0_cma0_x(8) <= u0_m0_wo0_cma0_w(8);
    u0_m0_wo0_cma0_x(9) <= u0_m0_wo0_cma0_w(9);
    u0_m0_wo0_cma0_x(10) <= u0_m0_wo0_cma0_w(10);
    u0_m0_wo0_cma0_x(11) <= u0_m0_wo0_cma0_w(11);
    u0_m0_wo0_cma0_x(12) <= u0_m0_wo0_cma0_w(12);
    u0_m0_wo0_cma0_x(13) <= u0_m0_wo0_cma0_w(13);
    u0_m0_wo0_cma0_x(14) <= u0_m0_wo0_cma0_w(14);
    u0_m0_wo0_cma0_x(15) <= u0_m0_wo0_cma0_w(15);
    u0_m0_wo0_cma0_x(16) <= u0_m0_wo0_cma0_w(16);
    u0_m0_wo0_cma0_x(17) <= u0_m0_wo0_cma0_w(17);
    u0_m0_wo0_cma0_x(18) <= u0_m0_wo0_cma0_w(18);
    u0_m0_wo0_cma0_x(19) <= u0_m0_wo0_cma0_w(19);
    u0_m0_wo0_cma0_x(20) <= u0_m0_wo0_cma0_w(20);
    u0_m0_wo0_cma0_x(21) <= u0_m0_wo0_cma0_w(21);
    u0_m0_wo0_cma0_x(22) <= u0_m0_wo0_cma0_w(22);
    u0_m0_wo0_cma0_x(23) <= u0_m0_wo0_cma0_w(23);
    u0_m0_wo0_cma0_x(24) <= u0_m0_wo0_cma0_w(24);
    u0_m0_wo0_cma0_x(25) <= u0_m0_wo0_cma0_w(25);
    u0_m0_wo0_cma0_x(26) <= u0_m0_wo0_cma0_w(26);
    u0_m0_wo0_cma0_x(27) <= u0_m0_wo0_cma0_w(27);
    u0_m0_wo0_cma0_x(28) <= u0_m0_wo0_cma0_w(28);
    u0_m0_wo0_cma0_x(29) <= u0_m0_wo0_cma0_w(29);
    u0_m0_wo0_cma0_x(30) <= u0_m0_wo0_cma0_w(30);
    u0_m0_wo0_cma0_x(31) <= u0_m0_wo0_cma0_w(31);
    u0_m0_wo0_cma0_y(0) <= u0_m0_wo0_cma0_s(1) + u0_m0_wo0_cma0_x(0);
    u0_m0_wo0_cma0_y(1) <= u0_m0_wo0_cma0_s(2) + u0_m0_wo0_cma0_x(1);
    u0_m0_wo0_cma0_y(2) <= u0_m0_wo0_cma0_s(3) + u0_m0_wo0_cma0_x(2);
    u0_m0_wo0_cma0_y(3) <= u0_m0_wo0_cma0_s(4) + u0_m0_wo0_cma0_x(3);
    u0_m0_wo0_cma0_y(4) <= u0_m0_wo0_cma0_s(5) + u0_m0_wo0_cma0_x(4);
    u0_m0_wo0_cma0_y(5) <= u0_m0_wo0_cma0_s(6) + u0_m0_wo0_cma0_x(5);
    u0_m0_wo0_cma0_y(6) <= u0_m0_wo0_cma0_s(7) + u0_m0_wo0_cma0_x(6);
    u0_m0_wo0_cma0_y(7) <= u0_m0_wo0_cma0_s(8) + u0_m0_wo0_cma0_x(7);
    u0_m0_wo0_cma0_y(8) <= u0_m0_wo0_cma0_s(9) + u0_m0_wo0_cma0_x(8);
    u0_m0_wo0_cma0_y(9) <= u0_m0_wo0_cma0_s(10) + u0_m0_wo0_cma0_x(9);
    u0_m0_wo0_cma0_y(10) <= u0_m0_wo0_cma0_s(11) + u0_m0_wo0_cma0_x(10);
    u0_m0_wo0_cma0_y(11) <= u0_m0_wo0_cma0_s(12) + u0_m0_wo0_cma0_x(11);
    u0_m0_wo0_cma0_y(12) <= u0_m0_wo0_cma0_s(13) + u0_m0_wo0_cma0_x(12);
    u0_m0_wo0_cma0_y(13) <= u0_m0_wo0_cma0_s(14) + u0_m0_wo0_cma0_x(13);
    u0_m0_wo0_cma0_y(14) <= u0_m0_wo0_cma0_s(15) + u0_m0_wo0_cma0_x(14);
    u0_m0_wo0_cma0_y(15) <= u0_m0_wo0_cma0_s(16) + u0_m0_wo0_cma0_x(15);
    u0_m0_wo0_cma0_y(16) <= u0_m0_wo0_cma0_s(17) + u0_m0_wo0_cma0_x(16);
    u0_m0_wo0_cma0_y(17) <= u0_m0_wo0_cma0_s(18) + u0_m0_wo0_cma0_x(17);
    u0_m0_wo0_cma0_y(18) <= u0_m0_wo0_cma0_s(19) + u0_m0_wo0_cma0_x(18);
    u0_m0_wo0_cma0_y(19) <= u0_m0_wo0_cma0_s(20) + u0_m0_wo0_cma0_x(19);
    u0_m0_wo0_cma0_y(20) <= u0_m0_wo0_cma0_s(21) + u0_m0_wo0_cma0_x(20);
    u0_m0_wo0_cma0_y(21) <= u0_m0_wo0_cma0_s(22) + u0_m0_wo0_cma0_x(21);
    u0_m0_wo0_cma0_y(22) <= u0_m0_wo0_cma0_s(23) + u0_m0_wo0_cma0_x(22);
    u0_m0_wo0_cma0_y(23) <= u0_m0_wo0_cma0_s(24) + u0_m0_wo0_cma0_x(23);
    u0_m0_wo0_cma0_y(24) <= u0_m0_wo0_cma0_s(25) + u0_m0_wo0_cma0_x(24);
    u0_m0_wo0_cma0_y(25) <= u0_m0_wo0_cma0_s(26) + u0_m0_wo0_cma0_x(25);
    u0_m0_wo0_cma0_y(26) <= u0_m0_wo0_cma0_s(27) + u0_m0_wo0_cma0_x(26);
    u0_m0_wo0_cma0_y(27) <= u0_m0_wo0_cma0_s(28) + u0_m0_wo0_cma0_x(27);
    u0_m0_wo0_cma0_y(28) <= u0_m0_wo0_cma0_s(29) + u0_m0_wo0_cma0_x(28);
    u0_m0_wo0_cma0_y(29) <= u0_m0_wo0_cma0_s(30) + u0_m0_wo0_cma0_x(29);
    u0_m0_wo0_cma0_y(30) <= u0_m0_wo0_cma0_s(31) + u0_m0_wo0_cma0_x(30);
    u0_m0_wo0_cma0_y(31) <= u0_m0_wo0_cma0_x(31);
    u0_m0_wo0_cma0_chainmultadd: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cma0_a <= (others => (others => '0'));
            u0_m0_wo0_cma0_c <= (others => (others => '0'));
            u0_m0_wo0_cma0_d <= (others => (others => '0'));
            u0_m0_wo0_cma0_s <= (others => (others => '0'));
        ELSIF(clk'EVENT AND clk = '1') THEN
            IF (xIn_v = "1") THEN
                u0_m0_wo0_cma0_a(0) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(1) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(2) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(3) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(4) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(5) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(6) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(7) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(8) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(9) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(10) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(11) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(12) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(13) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(14) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(15) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(16) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(17) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(18) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(19) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(20) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(21) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(22) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(23) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(24) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(25) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(26) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(27) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(28) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(29) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(30) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_a(31) <= RESIZE(SIGNED(xIn_0),14);
                u0_m0_wo0_cma0_c(0) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(1) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(2) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(3) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(4) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(5) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(6) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(7) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(8) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(9) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(10) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(11) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(12) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(13) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(14) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(15) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(16) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(17) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(18) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(19) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(20) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(21) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(22) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(23) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(24) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(25) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(26) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(27) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(28) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(29) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(30) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_c(31) <= RESIZE(UNSIGNED(GND_q),3);
                u0_m0_wo0_cma0_d(0) <= u0_m0_wo0_cma0_a(0);
                u0_m0_wo0_cma0_d(1) <= u0_m0_wo0_cma0_a(1);
                u0_m0_wo0_cma0_d(2) <= u0_m0_wo0_cma0_a(2);
                u0_m0_wo0_cma0_d(3) <= u0_m0_wo0_cma0_a(3);
                u0_m0_wo0_cma0_d(4) <= u0_m0_wo0_cma0_a(4);
                u0_m0_wo0_cma0_d(5) <= u0_m0_wo0_cma0_a(5);
                u0_m0_wo0_cma0_d(6) <= u0_m0_wo0_cma0_a(6);
                u0_m0_wo0_cma0_d(7) <= u0_m0_wo0_cma0_a(7);
                u0_m0_wo0_cma0_d(8) <= u0_m0_wo0_cma0_a(8);
                u0_m0_wo0_cma0_d(9) <= u0_m0_wo0_cma0_a(9);
                u0_m0_wo0_cma0_d(10) <= u0_m0_wo0_cma0_a(10);
                u0_m0_wo0_cma0_d(11) <= u0_m0_wo0_cma0_a(11);
                u0_m0_wo0_cma0_d(12) <= u0_m0_wo0_cma0_a(12);
                u0_m0_wo0_cma0_d(13) <= u0_m0_wo0_cma0_a(13);
                u0_m0_wo0_cma0_d(14) <= u0_m0_wo0_cma0_a(14);
                u0_m0_wo0_cma0_d(15) <= u0_m0_wo0_cma0_a(15);
                u0_m0_wo0_cma0_d(16) <= u0_m0_wo0_cma0_a(16);
                u0_m0_wo0_cma0_d(17) <= u0_m0_wo0_cma0_a(17);
                u0_m0_wo0_cma0_d(18) <= u0_m0_wo0_cma0_a(18);
                u0_m0_wo0_cma0_d(19) <= u0_m0_wo0_cma0_a(19);
                u0_m0_wo0_cma0_d(20) <= u0_m0_wo0_cma0_a(20);
                u0_m0_wo0_cma0_d(21) <= u0_m0_wo0_cma0_a(21);
                u0_m0_wo0_cma0_d(22) <= u0_m0_wo0_cma0_a(22);
                u0_m0_wo0_cma0_d(23) <= u0_m0_wo0_cma0_a(23);
                u0_m0_wo0_cma0_d(24) <= u0_m0_wo0_cma0_a(24);
                u0_m0_wo0_cma0_d(25) <= u0_m0_wo0_cma0_a(25);
                u0_m0_wo0_cma0_d(26) <= u0_m0_wo0_cma0_a(26);
                u0_m0_wo0_cma0_d(27) <= u0_m0_wo0_cma0_a(27);
                u0_m0_wo0_cma0_d(28) <= u0_m0_wo0_cma0_a(28);
                u0_m0_wo0_cma0_d(29) <= u0_m0_wo0_cma0_a(29);
                u0_m0_wo0_cma0_d(30) <= u0_m0_wo0_cma0_a(30);
                u0_m0_wo0_cma0_d(31) <= u0_m0_wo0_cma0_a(31);
            END IF;
            IF (d_u0_m0_wo0_memread_q_11_q = "1") THEN
                u0_m0_wo0_cma0_s(0) <= u0_m0_wo0_cma0_y(0);
                u0_m0_wo0_cma0_s(1) <= u0_m0_wo0_cma0_y(1);
                u0_m0_wo0_cma0_s(2) <= u0_m0_wo0_cma0_y(2);
                u0_m0_wo0_cma0_s(3) <= u0_m0_wo0_cma0_y(3);
                u0_m0_wo0_cma0_s(4) <= u0_m0_wo0_cma0_y(4);
                u0_m0_wo0_cma0_s(5) <= u0_m0_wo0_cma0_y(5);
                u0_m0_wo0_cma0_s(6) <= u0_m0_wo0_cma0_y(6);
                u0_m0_wo0_cma0_s(7) <= u0_m0_wo0_cma0_y(7);
                u0_m0_wo0_cma0_s(8) <= u0_m0_wo0_cma0_y(8);
                u0_m0_wo0_cma0_s(9) <= u0_m0_wo0_cma0_y(9);
                u0_m0_wo0_cma0_s(10) <= u0_m0_wo0_cma0_y(10);
                u0_m0_wo0_cma0_s(11) <= u0_m0_wo0_cma0_y(11);
                u0_m0_wo0_cma0_s(12) <= u0_m0_wo0_cma0_y(12);
                u0_m0_wo0_cma0_s(13) <= u0_m0_wo0_cma0_y(13);
                u0_m0_wo0_cma0_s(14) <= u0_m0_wo0_cma0_y(14);
                u0_m0_wo0_cma0_s(15) <= u0_m0_wo0_cma0_y(15);
                u0_m0_wo0_cma0_s(16) <= u0_m0_wo0_cma0_y(16);
                u0_m0_wo0_cma0_s(17) <= u0_m0_wo0_cma0_y(17);
                u0_m0_wo0_cma0_s(18) <= u0_m0_wo0_cma0_y(18);
                u0_m0_wo0_cma0_s(19) <= u0_m0_wo0_cma0_y(19);
                u0_m0_wo0_cma0_s(20) <= u0_m0_wo0_cma0_y(20);
                u0_m0_wo0_cma0_s(21) <= u0_m0_wo0_cma0_y(21);
                u0_m0_wo0_cma0_s(22) <= u0_m0_wo0_cma0_y(22);
                u0_m0_wo0_cma0_s(23) <= u0_m0_wo0_cma0_y(23);
                u0_m0_wo0_cma0_s(24) <= u0_m0_wo0_cma0_y(24);
                u0_m0_wo0_cma0_s(25) <= u0_m0_wo0_cma0_y(25);
                u0_m0_wo0_cma0_s(26) <= u0_m0_wo0_cma0_y(26);
                u0_m0_wo0_cma0_s(27) <= u0_m0_wo0_cma0_y(27);
                u0_m0_wo0_cma0_s(28) <= u0_m0_wo0_cma0_y(28);
                u0_m0_wo0_cma0_s(29) <= u0_m0_wo0_cma0_y(29);
                u0_m0_wo0_cma0_s(30) <= u0_m0_wo0_cma0_y(30);
                u0_m0_wo0_cma0_s(31) <= u0_m0_wo0_cma0_y(31);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_cma0_delay : dspba_delay
    GENERIC MAP (width => 36, depth => 0)
    PORT MAP (xin => STD_LOGIC_VECTOR(u0_m0_wo0_cma0_s(0)(35 downto 0)), xout => u0_m0_wo0_cma0_q, clk => clk, aclr => areset);

	--u0_m0_wo0_mtree_add0_0(ADD,83)@12
    u0_m0_wo0_mtree_add0_0_a <= STD_LOGIC_VECTOR((36 downto 36 => u0_m0_wo0_cma0_q(35)) & u0_m0_wo0_cma0_q);
    u0_m0_wo0_mtree_add0_0_b <= STD_LOGIC_VECTOR((36 downto 31 => u0_m0_wo0_cma1_q(30)) & u0_m0_wo0_cma1_q);
    u0_m0_wo0_mtree_add0_0: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= (others => '0');
        ELSIF(clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_add0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_add0_0_a) + SIGNED(u0_m0_wo0_mtree_add0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_add0_0_q <= u0_m0_wo0_mtree_add0_0_o(36 downto 0);


	--GND(CONSTANT,0)@0
    GND_q <= "0";

	--d_u0_m0_wo0_memread_q_12(DELAY,89)@11
    d_u0_m0_wo0_memread_q_12 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1 )
    PORT MAP ( xin => d_u0_m0_wo0_memread_q_11_q, xout => d_u0_m0_wo0_memread_q_12_q, clk => clk, aclr => areset );

	--u0_m0_wo0_oseq_gated_reg(REG,84)@12
    u0_m0_wo0_oseq_gated_reg: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF rising_edge(clk) THEN
            u0_m0_wo0_oseq_gated_reg_q <= d_u0_m0_wo0_memread_q_12_q;
        END IF;
    END PROCESS;


	--xOut(PORTOUT,87)@13
    xOut_v <= u0_m0_wo0_oseq_gated_reg_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_mtree_add0_0_q;


end normal;
