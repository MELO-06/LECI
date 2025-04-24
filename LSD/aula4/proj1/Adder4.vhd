library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- 4-bit Adder Entity
entity Adder4 is
    port(
        a, b  : in std_logic_vector(3 downto 0); -- 4-bit Inputs
        cin   : in std_logic;                    -- Carry-in
        s     : out std_logic_vector(3 downto 0); -- 4-bit Sum Output
        cout  : out std_logic                     -- Carry-out Output
    );
end Adder4;

-- 4-bit Adder Architecture
architecture Structural of Adder4 is
    -- Internal carry signals between full adders
    signal carryOut : std_logic_vector(3 downto 0);
begin
    -- Full Adder Instance for Bit 0
    bit0: entity work.FullAdder(Behavioral)
        port map(
            a    => a(0),
            b    => b(0),
            cin  => cin,
            s    => s(0),
            cout => carryOut(0)
        );

    -- Full Adder Instance for Bit 1
    bit1: entity work.FullAdder(Behavioral)
        port map(
            a    => a(1),
            b    => b(1),
            cin  => carryOut(0),
            s    => s(1),
            cout => carryOut(1)
        );

    -- Full Adder Instance for Bit 2
    bit2: entity work.FullAdder(Behavioral)
        port map(
            a    => a(2),
            b    => b(2),
            cin  => carryOut(1),
            s    => s(2),
            cout => carryOut(2)
        );

    -- Full Adder Instance for Bit 3
    bit3: entity work.FullAdder(Behavioral)
        port map(
            a    => a(3),
            b    => b(3),
            cin  => carryOut(2),
            s    => s(3),
            cout => cout -- Final Carry-out
        );

end Structural;
