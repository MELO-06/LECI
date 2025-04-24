library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity delay_timer is
    generic (
        PULSE_WIDTH_CYCLES : integer := 10  -- 200ns @ 50MHz
    );
    Port (
        clk       : in  STD_LOGIC;
        trigger   : in  STD_LOGIC;
        pulse_out : out STD_LOGIC
    );
end delay_timer;

architecture Behavioral of delay_timer is
    signal counter : integer := 0;
    signal active  : boolean := false;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if (trigger = '1' and not active) then
                active     <= true;
                counter    <= 1;
                pulse_out  <= '1';
            elsif active then
                if counter < PULSE_WIDTH_CYCLES then
                    counter <= counter + 1;
                else
                    active     <= false;
                    counter    <= 0;
                    pulse_out  <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
