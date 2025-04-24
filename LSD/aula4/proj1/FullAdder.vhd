library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Full Adder Entity
entity FullAdder is
    port(
        a, b, cin : in std_logic; -- Inputs: two bits and carry-in
        s, cout   : out std_logic -- Outputs: sum and carry-out
    );
end FullAdder;

-- Full Adder Architecture
architecture Behavioral of FullAdder is
begin
    -- Logical Equations
    s    <= a XOR b XOR cin; -- Sum calculation
    cout <= (a AND b) OR (a AND cin) OR (b AND cin); -- Carry-out calculation
end Behavioral;
