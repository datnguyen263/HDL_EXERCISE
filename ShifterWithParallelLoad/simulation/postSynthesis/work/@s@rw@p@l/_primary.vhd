library verilog;
use verilog.vl_types.all;
entity SRwPL is
    port(
        \OUT\           : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(1 downto 0)
    );
end SRwPL;
