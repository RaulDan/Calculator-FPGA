library	ieee;
use ieee.std_logic_1164.all;
entity afisor_7 is
	port(in3,in2,in1,in0 : in std_logic_vector (6 downto 0);
	anod3,anod2,anod1,anod0:out std_logic;
	clk:in std_logic;
	outaf:out std_logic_vector(6 downto 0));
end afisor_7;

architecture arh_afisor_7 of afisor_7 is
signal b:integer;
begin
	process(clk)
	variable a:integer;
	begin	  
		if clk='1' and clk'event then
			a:=a+1; b<=a;
			if a=4 then a:=0;
			end if;
		end if;
		end process;
		process(in3,in2,in1,in0,b)
		begin
			case b is
				when 1=>
				outaf<=in0; anod3<='1'; anod2<='1'; anod1<='1'; anod0<='0';
				when 2=>
				outaf<=in1; anod3<='1'; anod2<='1'; anod1<='0'; anod0<='1';
				when 3=>
				outaf<=in2; anod3<='1'; anod2<='0'; anod1<='1'; anod0<='1';
				when others=>
				outaf<=in3; anod3<='0'; anod2<='1'; anod1<='1'; anod0<='1';
			end case;
		end process;
end arh_afisor_7;
