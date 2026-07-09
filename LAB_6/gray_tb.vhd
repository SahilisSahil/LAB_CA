library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_BIN_TO_GRAY is
end tb_BIN_TO_GRAY;

architecture Behavior of tb_BIN_TO_GRAY is

    component BIN_TO_GRAY
        Port (
            B : in  STD_LOGIC_VECTOR(3 downto 0);
            G : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal B_tb : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal G_tb : STD_LOGIC_VECTOR(3 downto 0);

begin

    uut: BIN_TO_GRAY 
        port map (
            B => B_tb,
            G => G_tb
        );

    stim_proc: process
    begin
        wait for 20 ns;

        for i in 0 to 15 loop
            B_tb <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns;
        end loop;

        wait;
    end process;

end Behavior;