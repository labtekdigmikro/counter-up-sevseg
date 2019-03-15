library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counterup is
	port(
		clkin: in std_logic;
		ledout: out unsigned(3 downto 0)
	);
end counterup;

architecture counterupdesign of counterup is
	signal counter : integer range 0 to 50000000 := 0;
	signal bin_counter : unsigned(3 downto 0) := "0000";
begin
	process(clkin)
	begin
	
		if(rising_edge(clkin)) then
			counter <= counter + 1;
			
			if(counter > 50000000) then
				counter <= 0;
				bin_counter <= bin_counter + 1;
				ledout <= bin_counter;
			end if;
		end if;
	end process;
end counterupdesign;
