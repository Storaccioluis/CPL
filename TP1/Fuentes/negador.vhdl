LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY neg IS
	PORT (
		a_i : IN STD_LOGIC;
		b_o : OUT STD_LOGIC
	);
END;

ARCHITECTURE neg_arq OF neg IS
BEGIN
	b_o <= NOT a_i;
END;