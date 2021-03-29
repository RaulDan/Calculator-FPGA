library	ieee;
use ieee.std_logic_1164.all;
entity  mux_operatie is
	port (Selectare_operatie:in std_logic_vector(1 downto 0);
	rez_ad,rez_scad,rez_mul,rez_div:in std_logic_vector(8 downto 0);
	rezultat_operatie:out std_logic_vector(8 downto 0));
end mux_operatie;
architecture functionare of mux_operatie is 
--ad:std_logic_vector (8 downto 0):=rez_ad;
--scad:std_logic_vector (8 downto 0):=rez_scad;
--mul:std_logic_vector(8 downto 0):=rez_mul;
--div:std_logic_vector (8 downto 0):=rez_div;
begin
process(rez_ad,rez_scad,rez_mul,rez_div,Selectare_operatie) 
begin
	case Selectare_operatie is
		when "00"=>rezultat_operatie<=rez_ad;
		when "01"=>rezultat_operatie<=rez_scad;
		when "10"=>rezultat_operatie<=rez_mul;
		when others=>rezultat_operatie<=rez_div;
		end case;
	end process;
end functionare;