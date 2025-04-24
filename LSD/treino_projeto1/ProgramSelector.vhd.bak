library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ProgramSelector is
    port (
        SW       : in  std_logic_vector(1 downto 0); -- Switch input
        prog1_en : out std_logic;
        prog2_en : out std_logic;
        prog3_en : out std_logic;
        prog4_en : out std_logic
    );
end entity;

architecture Behavioral of ProgramSelector is
begin
    process(SW)
    begin
        -- Default disable all
        prog1_en <= '0';
        prog2_en <= '0';
        prog3_en <= '0';
        prog4_en <= '0';

        case SW is
            when "00" =>
                prog1_en <= '1'; -- All LEDs ON
            when "01" =>
                prog2_en <= '1'; -- Red ON, Green blinking at 2Hz
            when "10" =>
                prog3_en <= '1'; -- Green blinking at 1Hz
            when "11" =>
                prog4_en <= '1'; -- 4s ON/OFF with blink count
            when others =>
                null;
        end case;
    end process;
end Behavioral;
