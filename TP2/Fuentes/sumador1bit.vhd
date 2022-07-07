LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY sumador1bit IS
	PORT (
		a_i : IN STD_LOGIC;
		b_i : IN STD_LOGIC;
		ci_i : IN STD_LOGIC;
		s_o : OUT STD_LOGIC;
		co_o : OUT STD_LOGIC
	);
END;

ARCHITECTURE sumador1bit_arq OF sumador1bit IS
BEGIN

	s_o <= a_i XOR b_i XOR ci_i;
	co_o <= (a_i AND b_i) OR (a_i AND ci_i) OR (b_i AND ci_i);
END;