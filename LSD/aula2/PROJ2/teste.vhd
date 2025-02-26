LIBRARY ieee ; 
USE ieee.std_logic_1164.all ; 

ENTITY teste IS
	PORT (a, b : IN STD_LOGIC;
		f: OUT STD_LOGIC ) ;
END teste ;

ARCHITECTURE LogicFunction OF teste IS 
BEGIN 
	f <= (a AND NOT b) or (not a and b);
end LogicFunction	;
