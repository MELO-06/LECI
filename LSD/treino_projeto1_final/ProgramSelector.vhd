library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProgramSelector is
    port (
        SW       : in  std_logic_vector(1 downto 0); -- 2-bit switch input
        prog1_en : out std_logic; -- 1-bit output
        prog2_en : out std_logic; -- 1-bit output
        prog3_en : out std_logic; -- 1-bit output
        prog4_en : out std_logic  -- 1-bit output
    );
end entity;

architecture Behavioral of ProgramSelector is
begin
    process(SW)
    begin
        -- Default: All programs disabled
        prog1_en <= '0';
        prog2_en <= '0';
        prog3_en <= '0';
        prog4_en <= '0';

        case SW is
            when "00" => prog1_en <= '1'; -- Enable Program 1
            when "01" => prog2_en <= '1'; -- Enable Program 2
            when "10" => prog3_en <= '1'; -- Enable Program 3
            when "11" => prog4_en <= '1'; -- Enable Program 4
            when others => null;          -- Undefined states
        end case;
    end process;
end Behavioral;