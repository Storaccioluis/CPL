LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY sumador1bit_tb IS
END;

ARCHITECTURE sumador1bit_tb_arq OF sumador1bit_tb IS

    COMPONENT sumador1bit IS
        PORT (
            a : IN STD_LOGIC;
            b : IN STD_LOGIC;
            ci : IN STD_LOGIC;
            s : OUT STD_LOGIC;
            co : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a_tb : STD_LOGIC := '0';
    SIGNAL b_tb : STD_LOGIC := '0';
    SIGNAL ci_tb : STD_LOGIC := '0';
    SIGNAL s_tb : STD_LOGIC;
    SIGNAL co_tb : STD_LOGIC;

BEGIN

    a_tb <= NOT a_tb AFTER 10 ns;
    b_tb <= NOT b_tb AFTER 20 ns;
    ci_tb <= NOT ci_tb AFTER 40 ns;

    DUT : sumador1bit
    PORT MAP(
        a_i => a_tb,
        b_i => b_tb,
        ci_i => ci_tb,
        co_o => co_tb
        s_o => s_tb,
    );

END;