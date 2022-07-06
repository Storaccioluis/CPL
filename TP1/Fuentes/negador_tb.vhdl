LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY neg_tb IS
END;

ARCHITECTURE neg_tb_arq OF neg_tb IS

    -- component neg is
    -- port(
    -- a_i: in std_logic;
    -- b_o: out std_logic
    -- );
    -- end component;

    SIGNAL a_tb : STD_LOGIC := '0';
    SIGNAL b_tb : STD_LOGIC;

BEGIN

    a_tb <= '1' AFTER 150 ns, '0' AFTER 400 ns;

    DUT : ENTITY work.neg
        PORT MAP(
            a_i => a_tb,
            b_o => b_tb
        );

END;