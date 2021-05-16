library verilog;
use verilog.vl_types.all;
entity SRwPL is
    generic(
        N               : integer := 8;
        gnd             : vl_logic := Hi0
    );
    port(
        \OUT\           : out    vl_logic_vector;
        clk             : in     vl_logic;
        \IN\            : in     vl_logic_vector;
        sel             : in     vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
    attribute mti_svvh_generic_type of gnd : constant is 1;
end SRwPL;
