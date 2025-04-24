library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.all;

entity AdderN is
    generic (
        N : positive := 8 -- Parametrização do número de bits
    );
    port (
        operand0 : in STD_LOGIC_VECTOR(N-1 downto 0);
        operand1 : in STD_LOGIC_VECTOR(N-1 downto 0);
        result   : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity AdderN;

architecture Behavioral of AdderN is
begin
    result <=std_logic_vector (unsigned(operand0) + unsigned(operand1));
end architecture Behavioral;