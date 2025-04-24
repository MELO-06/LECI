library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity AccN is
    generic (
        N : integer := 8  -- Tamanho do acumulador
    );
    port (
        clk    : in std_logic;
        reset  : in std_logic;
        enable : in std_logic;
        A      : in std_logic_vector(N-1 downto 0);
        S      : out std_logic_vector(N-1 downto 0)
    );
end AccN;

architecture Behavioral of AccN is

    signal s_AdderOut, s_RegOut : std_logic_vector(N-1 downto 0);

begin
    
    -- Instanciação do somador AdderN
    somador: entity work.AdderN(Behavioral)
        generic map (N => N)
        port map (
            A => A,
            B => s_RegOut,
            S => s_AdderOut
        );
    
    -- Instanciação do registo RegN
    registo: entity work.RegN(Behavioral)
        generic map (N => N)
        port map (
            clk     => clk,
            reset   => reset,
            enable  => enable,
            datain  => s_AdderOut,
            dataout => s_RegOut
        );
    
    -- Saída do acumulador
    S <= s_RegOut;
    
end Behavioral;
