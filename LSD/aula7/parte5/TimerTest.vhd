library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TimerTest is
    Port (
        CLOCK_50  : in  STD_LOGIC;  -- clock de 50 MHz da placa
        KEY       : in  STD_LOGIC_VECTOR(0 downto 0); -- botão de disparo (KEY0)
        LEDG      : out STD_LOGIC_VECTOR(0 downto 0)  -- LED de saída (LEDG0)
    );
end TimerTest;

architecture Behavioral of TimerTest is

    component delay_timer
        generic (
            PULSE_WIDTH_CYCLES : integer := 10
        );
        Port (
            clk       : in  STD_LOGIC;
            trigger   : in  STD_LOGIC;
            pulse_out : out STD_LOGIC
        );
    end component;

    signal pulse_signal : STD_LOGIC;

begin

    timer_inst : delay_timer
        generic map (
            PULSE_WIDTH_CYCLES => 10
        )
        port map (
            clk       => CLOCK_50,
            trigger   => not KEY(0),  -- botão ativo em '0'
            pulse_out => pulse_signal
        );

    LEDG(0) <= pulse_signal;

end Behavioral;
