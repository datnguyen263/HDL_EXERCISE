library verilog;
use verilog.vl_types.all;
entity word is
    generic(
        N               : integer := 7
    );
    port(
        \out\           : out    vl_logic_vector;
        \in\            : in     vl_logic_vector;
        cs              : in     vl_logic;
        we              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end word;
