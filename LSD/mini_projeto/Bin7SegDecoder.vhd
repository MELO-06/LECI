library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
    port(
        binInput  : in std_logic_vector(3 downto 0);
        enable    : in std_logic;
        decOut  : out std_logic_vector(6 downto 0)
    );
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
    process(binInput, enable)
    begin
        if enable = '1' then
            case binInput is
                when "0001" =>
                    decOut <= "1111001"; -- 1
                when "0010" =>
                    decOut <= "0100100"; -- 2
                when "0011" =>
                    decOut <= "0110000"; -- 3
                when "0100" =>
                    decOut <= "0011001"; -- 4
                when "0101" =>
                    decOut <= "0010010"; -- 5
                when "0110" =>
                    decOut <= "0000010"; -- 6
                when "0111" =>
                    decOut <= "1111000"; -- 7
                when "1000" =>
                    decOut <= "0000000"; -- 8
                when "1001" =>
                    decOut <= "0010000"; -- 9
                when "1010" =>
                    decOut <= "0001000"; -- A
                when "1011" =>
                    decOut <= "0000011"; -- b
                when "1100" =>
                    decOut <= "1000110"; -- C
                when "1101" =>
                    decOut <= "0100001"; -- d
                when "1110" =>
                    decOut <= "0000110"; -- E
                when "1111" =>
                    decOut <= "0001110"; -- F
                when others =>
                    decOut <= "1000000"; -- 0
            end case;
        else
            decOut <= "1111111";
        end if;
    end process;
end Behavioral;