library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Bin2BCD is
    Port (
        bin_in   : in  STD_LOGIC_VECTOR(3 downto 0);  -- Entrada binária (4 bits)
        bcd_ones : out STD_LOGIC_VECTOR(3 downto 0);  -- Dígitos BCD - Unidades
        bcd_tens : out STD_LOGIC_VECTOR(3 downto 0)   -- Dígitos BCD - Dezenas
    );
end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin
    process (bin_in)
        variable bin_value : INTEGER range 0 to 15;  -- Valor convertido para inteiro
    begin
        bin_value := CONV_INTEGER(bin_in);  -- Converte binário para inteiro
        
        if bin_value < 10 then
            bcd_tens <= "0000";  -- Dezenas = 0
            bcd_ones <= bin_in;   -- Unidades = valor direto
        else
            bcd_tens <= "0001";  -- Dezenas = 1 (pois binário de 4 bits vai de 0 a 15)
            bcd_ones <= bin_in - "1010";  -- Subtrai 10 para obter a unidade
        end if;
    end process;
end Behavioral;