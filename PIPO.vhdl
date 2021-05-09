library IEEE;
Use IEEE.STD_LOGIC_1164.All;
Use IEEE.STD_LOGIC_ARITH.All;
Use IEEE.STD_LOGIC_UNSIGNED.All;
entity pipo is 
Port (pi: in std_logic _vector (3 downto 0);
         clk: in std_logic;
          po:in out std_logic _vector (3 downto 0));
end pipo;
architecture structural of pipo is
 signal d:std_ logic vector(4 downto 0);
component d_ff is
Port (d,clk: in std_logic;
        q,qbar :in out std_logic);
end component;
begin
11:d_ff port map( pi(3), clk, po(3),d(3));
12:d_ff port map( pi(2), clk, po(2),d(2));
13:d_ff port map( pi(1), clk, po(1),d(1));
14:d_ff port map( pi(0), clk, po(0),d(0));
end  structural;
