library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity AccN is
    generic (
        N : positive := 8 -- Parametrização do número de bits
    );
    port (
        clk     : in STD_LOGIC;
        reset   : in STD_LOGIC;
        enable  : in STD_LOGIC;
        dataIn  : in STD_LOGIC_VECTOR(N-1 downto 0);
        dataOut : out STD_LOGIC_VECTOR(N-1 downto 0)
    );
end entity AccN;

architecture Structural of AccN is
    signal sum_result, reg_value : STD_LOGIC_VECTOR(N-1 downto 0);

    component AdderN
        generic (
            N : positive := 8
        );
        port (
            operand0 : in STD_LOGIC_VECTOR(N-1 downto 0);
            operand1 : in STD_LOGIC_VECTOR(N-1 downto 0);
            result   : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

    component RegN
        generic (
            N : positive := 8
        );
        port (
            clk     : in STD_LOGIC;
            reset   : in STD_LOGIC;
            enable  : in STD_LOGIC;
            dataIn  : in STD_LOGIC_VECTOR(N-1 downto 0);
            dataOut : out STD_LOGIC_VECTOR(N-1 downto 0)
        );
    end component;

begin
    -- Instância do somador
    adder_instance: AdderN
        generic map (N => N)
        port map (
            operand0 => reg_value,
            operand1 => dataIn,
            result   => sum_result
        );

    -- Instância do registo
    register_instance: RegN
        generic map (N => N)
        port map (
            clk     => clk,
            reset   => reset,
            enable  => enable,
            dataIn  => sum_result,
            dataOut => reg_value
        );
    
    dataOut <= reg_value;
end architecture Structural;