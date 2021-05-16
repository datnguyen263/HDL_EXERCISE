library verilog;
use verilog.vl_types.all;
entity SRwPL_stack is
    generic(
        N               : integer := 8
    );
    port(
        OUT_M           : out    vl_logic;
        \OUT\           : out    vl_logic_vector;
        clk             : in     vl_logic;
        \IN\            : in     vl_logic_vector;
        sel1            : in     vl_logic;
        sel0            : in     vl_logic;
        ILeft           : in     vl_logic;
        IRight          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end SRwPL_stack;
