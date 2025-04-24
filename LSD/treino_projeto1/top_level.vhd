library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level is
    port (
        SW   : in  std_logic_vector(1 downto 0);  -- Input switches
        LEDR : out std_logic_vector(3 downto 0);  -- Red LEDs
        LEDG : out std_logic_vector(3 downto 0)   -- Green LEDs
    );
end top_level;

architecture Behavioral of top_level is

    -- Component declaration for programselector
    component programselector
        port (
            SW       : in  std_logic_vector(1 downto 0);
            prog1_en : out std_logic_vector(3 downto 0);
            prog2_en : out std_logic_vector(3 downto 0);
            prog3_en : out std_logic_vector(3 downto 0);
            prog4_en : out std_logic_vector(3 downto 0)
        );
    end component;

    -- Internal signals for programselector outputs
    signal prog1_en : std_logic_vector(3 downto 0);
    signal prog2_en : std_logic_vector(3 downto 0);
    signal prog3_en : std_logic_vector(3 downto 0);
    signal prog4_en : std_logic_vector(3 downto 0);
    
    -- Control signal to select active module
    signal module_select : std_logic := '0';  -- Default to programselector

begin

    -- Instantiate the programselector
    ps_inst: programselector
        port map (
            SW => SW,
            prog1_en => prog1_en,
            prog2_en => prog2_en,
            prog3_en => prog3_en,
            prog4_en => prog4_en
        );

    -- Use module_select to choose which module drives the LEDs
    -- When module_select = '0', programselector drives the LEDs
    -- When module_select = '1', LedDisplayer drives the LEDs
    
    -- Connect outputs based on module_select
    LEDR <= prog1_en when module_select = '0' else (others => '0');
    LEDG <= prog1_en when module_select = '0' else (others => '0');
    
    -- Note: You would need to add similar logic for LedDisplayer outputs
    -- For example:
    -- LEDR <= ledOut when module_select = '1' else prog1_en;
    -- LEDG <= ledOut when module_select = '1' else prog1_en;

    -- Control process for module_select (example - could be tied to a switch)
    process(SW)
    begin
        -- Example: Use SW(1) to select between modules
        module_select <= SW(1);
    end process;

end Behavioral;