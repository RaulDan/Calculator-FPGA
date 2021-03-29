library	ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity calculator is
	port(clk:in std_logic;
	enable,egal:in std_logic;
	operatie:in std_logic_vector(1 downto 0);
	n1,n2:in  std_logic_vector (7 downto 0);
	rezz:out std_logic_vector (8 downto 0);		  
	catod:out std_logic_vector(6 downto 0);
	anod:out std_logic_vector(3 downto 0);
	numar_afisat:out std_logic_vector(8 downto 0));
end entity calculator;

architecture f_calculator of calculator is
component suma is
	port (clk:in std_logic;
	a,b:in std_logic_vector(7 downto 0);
	s:out std_logic_Vector(8 downto 0));
end component suma;	   
component scadere is
	port (a,b:in std_logic_vector (7 downto 0);
	clk:in std_logic;
	d:out std_logic_vector(8 downto 0)); 
end component scadere; 

component inmultire is
	port(a,b:IN std_logic_vector (7 downto 0);
	p:out std_logic_vector (8 downto 0);clk:in std_logic;
	co:out std_logic);
end component inmultire;  

component impartire is
	port(a,b:In std_logic_vector(7 downto 0);	
	clk:in std_logic;
	c:out std_logic_vector(8 downto 0));
end component impartire;	

component mux_operatie is
	port (Selectare_operatie:in std_logic_vector(1 downto 0);
	rez_ad,rez_scad,rez_mul,rez_div:in std_logic_vector(8 downto 0);
	rezultat_operatie:out std_logic_vector(8 downto 0));
end component mux_operatie;	

component ce_se_afiseaza is
	port(a,b: in std_logic_vector(7 downto 0); 
	rez:in std_logic_Vector(8 downto 0);
	enable:in std_logic; 
	egal:in std_logic;		  
	y:out std_logic_vector(8 downto 0);
	clk:in std_logic);
end component ce_se_afiseaza; 
component SSD is
  Port (
  signal digit0: in std_logic_vector(3 downto 0);
  signal digit1: in std_logic_vector(3 downto 0);
  signal digit2: in std_logic_vector(3 downto 0);
  signal digit3: in std_logic_vector(3 downto 0);
  signal clk:in std_logic;
  signal cat:out std_logic_vector(6 downto 0);
  signal an:out std_logic_vector(3 downto 0));
  
  
end component SSD;	 
component   s_dcd is
	port(nr:in std_logic_vector(8 downto 0);
	x3,x2,x1,x0:out std_logic_vector(6 downto 0));
end component s_dcd;
component mpg is
 Port ( signal btn:in std_logic;
        signal clk:in std_logic;
        signal en:out std_logic
 );

end component mpg;
signal c:std_logic;
signal aux_ad,aux_scad,aux_mul,aux_div,aux_rez:std_logic_vector(8 downto 0);
begin
	c1:suma port map(clk,n1,n2,aux_ad);   
	c2:scadere port map(n1,n2,clk,aux_scad);  
	c3:inmultire port map(n1,n2,aux_mul,clk,c);
	c4:impartire port map(n1,n2,clk,aux_div);
	op:mux_operatie port map(operatie,aux_ad,aux_scad,aux_mul,aux_div,aux_rez);
	rezz<=aux_rez;
	af:component ce_se_afiseaza port map(n1,n2,aux_rez,enable,egal,numar_afisat,clk);
	
end f_calculator;