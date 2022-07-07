LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY negador_tb IS
END;

ARCHITECTURE neg_tb_arq OF negador_tb IS

    COMPONENT negador IS
        PORT (
            a_i : IN STD_LOGIC;
            b_o : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL a_tb : STD_LOGIC := '0';
    SIGNAL b_tb : STD_LOGIC;

BEGIN

    a_tb <= '1' AFTER 150 ns, '0' AFTER 400 ns;

    DUT : negador
        PORT MAP(
            a_i => a_tb,
            b_o => b_tb
        );

END;