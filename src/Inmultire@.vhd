library	ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;	
use ieee.std_logic_signed.all;

entity inmultire is
	port(a,b:IN std_logic_vector (7 downto 0);
	p:out std_logic_vector (8 downto 0);clk:in std_logic;
	co:out std_logic);
end inmultire;
architecture f_inmultire of inmultire is
signal q: std_logic_vector (13 downto 0):="00000000000000";	  
signal aux,w: std_logic_vector(8 downto 0):="000000000"; 
signal v:std_logic_vector(13 downto 0):="00000011111111";
begin		   
	process(clk,aux)
	variable r1,r2,r3,r4,r5,r6,r7,r:std_logic_vector (12 downto 0);  	  
	begin 
		if(clk'event and clk='1') then 
		r1:="0000000000000";
		r2:="0000000000000";  
		r3:="0000000000000";
		r4:="0000000000000";
		r5:="0000000000000";
		r6:="0000000000000";
		r7:="0000000000000";
		if(b(0)='1')then r1(6 downto 0):=a(6 downto 0);
		end if;
		if(b(1)='1')then r2(7 downto 1):=a(6 downto 0);
		end if;
		if(b(2)='1')then r3(8 downto 2):=a(6 downto 0);
		end if;
		if(b(3)='1')then r4(9 downto 3):=a(6 downto 0);
		end if;
		if(b(4)='1')then r5(10 downto 4):=a(6 downto 0);
		end if;						   
		if(b(5)='1')then r6(11 downto 5):=a(6 downto 0);
		end if;						   
		if(b(6)='1')then r7(12 downto 6):=a(6 downto 0);
		end if;							
		r:=r1+r2+r3+r4+r5+r6+r7;
		if(r>127)then p<="111111111";
		else p(6 downto 0)<=r(6 downto 0);
		p(7)<=a(7)xor b(7);
		p(8)<='0';
		end if;
		
	    
		end if;
		
end process;	
	
end f_inmultire;