library verilog;
use verilog.vl_types.all;
entity FAS is
    generic(
        N               : integer := 10
    );
    port(
        S               : out    vl_logic_vector;
        Cout            : out    vl_logic;
        D               : in     vl_logic;
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end FAS;
