library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;









entity scadere is
	port (a,b:in std_logic_vector (7 downto 0);
	clk:in std_logic;
	d:out std_logic_vector(8 downto 0)); 
end scadere;
architecture  f_scadere2 of scadere is
begin
	process(clk)
	variable T:std_logic_vector (8 downto 0);
	begin
		if(clk'event and clk='1')then
			if(a(7)='1' and b(7)='0') then T:=("00"&a(6 downto 0))+("00"&b(6 downto 0)); ------------- [-a+(-b)]
		if T>"1111111" then T:="111111111";
		else T(7):='1';	 
		end if;	  
		end if;
		if (a(7)='0' and b(7)='0')then 													   -------------[a-b] si [b-a]
			if(a(6 downto 0)>=b(6 downto 0))then T(7 downto 0):=('0'&a(6 downto 0))-('0'&b(6 downto 0));  
				
			else T(7 downto 0):=b-a;--('6 downto 0)-a(6 downto 0);
				T(7):='1';
			end if;
			T(8):='0';
		end if;
		if(a(7)='1' and b(7)='1') then 
		  if(a(6 downto 0)>b(6 downto 0))then T(6 downto 0):=a(6 downto 0)-b(6 downto 0);		-------	[-a-(-b)]
			  T(7):='1';	
			  T(8):='0';
		  else 
			  T(7 downto 0):=('0'&b(6 downto 0))-('0'&a(6 downto 0));
			 -- T(7):='1'; 
			 T(8):='0';
		  end if;
		  end if;
		  if(a(7)='0' and b(7)='1')then 									 ------a-[-b]
			   T:=("00"&a(6 downto 0)+("00"&b(6 downto 0)));
				  if(T>"1111111")then T:="111111111";
					  end if;
				 -- T(7):='1';
			  end if;							
			  --T(8):='0';
			 -- end if;	
		end if;		   
		d<=T;
		end process;
		end f_scadere2;