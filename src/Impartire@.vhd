library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;
entity impartire is
	port(a,b:In std_logic_vector(7 downto 0);	
	clk:in std_logic;
	c:out std_logic_vector(8 downto 0));
end impartire;	

architecture f_impartire2 of impartire is 
signal aux,s: std_logic_vector (8 downto 0);
begin
	process(clk)
	variable x,y:std_logic_vector(6 downto 0); 
	variable t:std_logic_vector(8 downto 0);--:="000000000";
	begin 
		if(clk'event and clk='1') then
			t:="000000000";
			x:=a(6 downto 0);
			y:=b(6 downto 0); 
			
			for i in 1 to 128 loop 
				if a(6 downto 0)<b(6 downto 0)then t:="000000000";
					exit;
					end if;
				case b is
					when "00000000"=>t:="111111111";exit;
					when "00000001"=>t(7 downto 0):=a;t(8):='0';exit;
					--when "10000001"=>t(6 downto 0):=a(6 downto 0);t(7):=not(a(7));t(8):='0'; exit;
					when others=>null;														
				end case;
				
			
				case x is
					when "0000000"=>t:="000000000";
					when others=>x:=x-y;t:=t+1;
				end case;					   
				if x<y then exit;
					end if;
				
			
			end loop;
				 ---if de la clk
			if t="111111111" then c<=t;
			else
			t(8):='0';
			t(7):=a(7)xor b(7);
			end if;
			
		end if;
		c<=t;
end process; 
end f_impartire2;

	
	
