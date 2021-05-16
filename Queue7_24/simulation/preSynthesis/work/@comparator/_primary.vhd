library verilog;
use verilog.vl_types.all;
entity Comparator is
    generic(
        N               : integer := 10;
        vcc             : vl_logic := Hi1
    );
    port(
        \out\           : out    vl_logic;
        A               : in     vl_logic_vector;
        B               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
    attribute mti_svvh_generic_type of vcc : constant is 1;
end Comparator;
