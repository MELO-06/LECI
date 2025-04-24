library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD_Demo is
    port(
        SW   : in std_logic_vector(2 downto 0);  -- Entrada de switches
        KEY  : in std_logic_vector(0 downto 0);  -- Entrada do clock (botão)
        LEDR : out std_logic_vector(0 downto 0)  -- Saída do Flip-Flop D
    );
end FlipFlopD_Demo;

architecture Shell of FlipFlopD_Demo is
begin
    -- Instanciação do Flip-Flop D
    ff_d: entity work.FlipFlopD
    port map (
        clk   => KEY(0),  -- Chave KEY(0) como clock
        d     => SW(0),   -- SW(0) como entrada D
        set   => SW(1),   -- SW(1) como entrada Set
        reset => SW(2),   -- SW(2) como entrada Reset
        q     => LEDR(0)  -- Saída para LEDR(0)
    );
end Shell;
	