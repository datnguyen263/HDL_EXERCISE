library verilog;
use verilog.vl_types.all;
entity Stack7_20 is
    generic(
        N               : integer := 7
    );
    port(
        counter         : out    vl_logic_vector;
        \OUT\           : out    vl_logic_vector;
        empty           : out    vl_logic;
        full            : out    vl_logic;
        \IN\            : in     vl_logic_vector;
        clk             : in     vl_logic;
        PushPop         : in     vl_logic;
        En              : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end Stack7_20;
