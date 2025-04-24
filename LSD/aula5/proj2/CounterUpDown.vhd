library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CounterUpDown4 is
    Port (
        clk     : in  STD_LOGIC;                    
        reset   : in  STD_LOGIC;                    
        upDown  : in  STD_LOGIC;                    
        count   : out STD_LOGIC_VECTOR (3 downto 0) 
    );
end CounterUpDown4;

architecture Behavioral of CounterUpDown4 is
    signal count_reg : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                count_reg <= "0000";   
            elsif upDown = '1' then
                count_reg <= count_reg + 1;  
            else
                count_reg <= count_reg - 1;  
            end if;
        end if;
    end process;

    count <= count_reg;  
end Behavioral;