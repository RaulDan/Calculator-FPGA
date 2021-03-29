library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity suma is
	port (clk:in std_logic;
	a,b:in std_logic_vector(7 downto 0);
	s:out std_logic_Vector(8 downto 0));
end suma;

architecture f_suma2 of suma is 
--signal T:std_logic_Vector(8 downto 0);
begin
	process(clk)  
		variable  T:std_logic_Vector(8 downto 0);
	begin 
	if (clk'event and clk='1')then 
		if(a(7)='0' and b(7)='0') then T:=('0'&a)+('0'&b);
		if T>"1111111" then T:="111111111";
		else T(8):='0';
		end if;
		end if;	
		if(a(7)='1' and b(7)='1') then T:=("00"&a(6 downto 0))+("00"&b(6 downto 0)); 
			
		if T>"1111111" then T:="111111111";
		else T(8):='0';	
			T(7):='1';
		end if;
		end if;
		if a(7)='0' and b(7)='1' then 
			if(a(6 downto 0)>b(6 downto 0))then T(7 downto 0):=('0'&a(6 downto 0))-('0'&b(6 downto 0));	
				T(8):='0';
			else T(7 downto 0):=b-a; 
				T(8):='0';
			end if;
		end if;
		if b(7)='0' and a(7)='1' then 
			if(a(6 downto 0)>b(6 downto 0))then T(6 downto 0):=a(6 downto 0)-b(6 downto 0);
				T:="01"&T(6 downto 0);
			else T(7 downto 0):=('0'&b(6 downto 0))-('0'&a(6 downto 0));
				T(8):='0';
			end if;
		end if;
		s<=T;
	end if;
	end process; 
			
			
	end architecture f_suma2;							   