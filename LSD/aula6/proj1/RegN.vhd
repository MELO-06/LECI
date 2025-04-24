library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RegN is
    generic (
        N : positive := 8 -- Parametrização do número de bits
    );
    port (
        clk     : in STD_LOGIC;
        reset   : in STD_LOGIC;
        enable  : in STD_LOGIC;
        dataIn  : in STD_LOGIC_VECTOR(N-1 downto 0);
        dataOut : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity RegN;

architecture Behavioral of RegN is
    signal reg_value : STD_LOGIC_VECTOR(N-1 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            reg_value <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                reg_value <= dataIn;
            end if;
        end if;
    end process;
    
    dataOut <= reg_value;
end architecture Behavioral;