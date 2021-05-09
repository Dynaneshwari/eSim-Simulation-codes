library IEEE;
Use IEEE.STD_LOGIC_1164.All;
Use IEEE.STD_LOGIC_ARITH.All;
Use IEEE.STD_LOGIC_UNSIGNED.All;
Entity siso is 
Port (si: in std_logic;
        clk: in std_logic;
        so:in out std_logic);
end siso;
architecture structural of siso is 
component d_ff is
Port( d,clk: in std_logic;
        q,qbar :in out std_logic);
end component;
Signal a1, a2, a3, d1, d2, d3, d4:std_logic;
begin
11:d_ff port map (si, clk, a1, d1);
12:d_ff port map (a1, clk, a2, d2);
13:d_ff port map (a2, clk, a3, d3);
14:d_ff port map (a3, clk, so, d4);
end structural;
