library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity projeto is
    port (
        CLK   : in  std_logic;                     -- 50MHz clock
        SW    : in  std_logic_vector(1 downto 0);  -- 2-bit input switches
        LEDR  : out std_logic_vector(3 downto 0);  -- 4-bit red LEDs
        LEDG  : out std_logic_vector(3 downto 0)   -- 4-bit green LEDs
    );
end projeto;

architecture Behavioral of projeto is

    -- Component declarations
    component ProgramSelector
        port (
            SW       : in  std_logic_vector(1 downto 0);
            prog1_en : out std_logic;
            prog2_en : out std_logic;
            prog3_en : out std_logic;
            prog4_en : out std_logic
        );
    end component;

    component FreqDivider
        generic(divFactor : positive := 25000000); -- For 2Hz from 50MHz
        port (
            clkIn  : in  std_logic;
            en     : in  std_logic;
            clkOut : out std_logic
        );
    end component;

    -- Signals
    signal prog1_en, prog2_en, prog3_en, prog4_en : std_logic;
    signal blink_clk : std_logic;  -- Blinking clock signal

begin

    -- Instantiate ProgramSelector
    ps_inst: ProgramSelector
        port map (
            SW       => SW,
            prog1_en => prog1_en,
            prog2_en => prog2_en,
            prog3_en => prog3_en,
            prog4_en => prog4_en
        );

    -- Instantiate FreqDivider for 2Hz blinking (twice per second)
    fd_inst: FreqDivider
        generic map (divFactor => 25000000)  -- 50MHz/25,000,000 = 2Hz
        port map (
            clkIn  => CLK,
            en     => prog2_en,  -- Enabled only when Program 2 is active
            clkOut => blink_clk
        );

    -- LED Control Logic
    process(prog1_en, prog2_en, prog3_en, prog4_en, blink_clk)
    begin
        -- Program 1: All LEDs on
        if prog1_en = '1' then
            LEDR <= "1111";
            LEDG <= "1111";
        
        -- Program 2: Blinking at 2Hz (when enabled)
        elsif prog2_en = '1' then
            LEDR <= (others => blink_clk);
            LEDG <= (others => blink_clk);
        
        -- Other programs (to be implemented)
        else
            LEDR <= "0000";
            LEDG <= "0000";
        end if;
    end process;

end Behavioral;