library verilog;
use verilog.vl_types.all;
entity word is
    generic(
        N               : integer := 31
    );
    port(
        OutA            : out    vl_logic_vector;
        OutB            : out    vl_logic_vector;
        RE_A            : in     vl_logic;
        RE_B            : in     vl_logic;
        WE              : in     vl_logic;
        \In\            : in     vl_logic_vector;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end word;
