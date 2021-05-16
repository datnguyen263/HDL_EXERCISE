library verilog;
use verilog.vl_types.all;
entity selector is
    generic(
        n               : integer := 10
    );
    port(
        \out\           : out    vl_logic_vector;
        sel             : in     vl_logic;
        I0              : in     vl_logic_vector;
        I1              : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end selector;
