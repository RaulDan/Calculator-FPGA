library	IEEE;
use IEEE.std_logic_1164.all;
use IEee.std_logic_unsigned.all;
use	ieee.std_logic_arith.all;
use ieee.numeric_std.all;
entity ce_se_afiseaza is
	port(a,b: in std_logic_vector(7 downto 0); 
	rez:in std_logic_Vector(8 downto 0);
	enable:in std_logic; 
	egal:in std_logic;		  
	y:out std_logic_vector(8 downto 0);
	clk:in std_logic);
end ce_se_afiseaza;
architecture f_ce_se_afiseaza of ce_se_afiseaza is  
signal temp:std_logic_vector(8 downto 0);
begin
	process(clk)
	
	begin
		if(clk'event and clk='1') then
		if egal='0' then
		  if enable='0' then	
			temp<='0'&a;    --egal si enable ='0' => scoatem primul nr
			
		  else 	
			temp<='0'&b;  --egal='0' si enable ='1' => scoatem al 2 nr
			
		  end if; 
	   else temp<=rez; --daca egal='1' scoate rezultatul operatiei in semnalul declarat in arh 
		   
	   end if;
	   end if; 
	  end process;
y<=temp;  --iesirea ia valoarea semnalului ,care in functie de egal si enable scoate primul,al doilea nr sau rezultatul 
  
end architecture  ;