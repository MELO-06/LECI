library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Grinalda is    
    port(
        CLOCK_50 : in std_logic;
        SW       : in std_logic_vector(1 downto 0);
        LEDR     : out std_logic_vector(7 downto 0);
        LEDG     : out std_logic_vector(3 downto 0);
        HEX0     : out std_logic_vector(6 downto 0)
    );
end Grinalda;

architecture Shell of Grinalda is

    signal s_DecOut : std_logic_vector(3 downto 0);
    signal s_HexIn  : std_logic_vector(3 downto 0);
    
    signal blink_1Hz : std_logic;
    signal blink_2Hz : std_logic;
    signal clk_6s    : std_logic;
    
    signal enable_6s : std_logic;
    
begin

    s_HexIn <= std_logic_vector(unsigned("00" & SW(1 downto 0)) + 1);
    
    bin_7seg : entity work.Bin7SegDecoder(Behavioral)
                        port map(enable => '1',
                                 binInput => s_HexIn(3 downto 0),
                                 decOut => HEX0(6 downto 0));
    
    dec2_4 : entity work.DEc2_4En(Behavioral)
                        port map(enable  => '1',
                                 inputs  => SW(1 downto 0),
                                 outputs => s_DecOut(3 downto 0));
                                    
    u_blink_1hz : entity work.blink_gen(Behavioral)
                        generic map(NUMBER_STEPS => 50000000)
                        port map(clk   => CLOCK_50,
                                 reset => '0',
                                 blink => blink_1Hz);
                                    
    u_blink_2hz : entity work.blink_gen(Behavioral)
                        generic map(NUMBER_STEPS => 25000000)
                        port map(clk   => CLOCK_50,
                                 reset => '0',
                                 blink => blink_2Hz);
                                    
    clk_6s_period : entity work.ClkDivider(Behavioral)
                        generic map(divFactor => 300000000)
                        port map(ClkIn => CLOCK_50,
                                 ClkOut => clk_6s);    
    
    process(s_DecOut)
    begin
        
        if (s_DecOut(0) = '1') then
            LEDR <= (others => '1');
            LEDG <= (others => '1');
        
        elsif (s_DecOut(1) = '1') then
            if (blink_2Hz = '1') then
                LEDR <= (others => '1');
                LEDG <= (others => '0');
            else
                LEDR <= (others => '0');
                LEDG <= (others => '0');
            end if;
                
        elsif (s_DecOut(2) = '1') then
            if (blink_1Hz = '1') then
                LEDR <= (others => '0');
                LEDG <= (others => '1');
            else
                LEDR <= (others => '0');
                LEDG <= (others => '0');
            end if;
                
        else
            if (rising_edge(clk_6s)) then
                enable_6s <= not enable_6s;
            end if;
            if (enable_6s = '1') then
                if (blink_1Hz = '1') then
                    LEDR <= (others => '0');
                    LEDG <= (others => '1');
                else
                    LEDR <= (others => '0');
                    LEDG <= (others => '0');
                end if;
            else
                if (blink_2Hz = '1') then
                    LEDR <= (others => '1');
                    LEDG <= (others => '0');
                else
                    LEDR <= (others => '0');
                    LEDG <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Shell;