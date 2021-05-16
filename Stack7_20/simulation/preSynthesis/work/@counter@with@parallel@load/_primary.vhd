library verilog;
use verilog.vl_types.all;
entity CounterWithParallelLoad is
    generic(
        N               : integer := 11
    );
    port(
        \OUT\           : out    vl_logic_vector;
        clk             : in     vl_logic;
        load            : in     vl_logic;
        En              : in     vl_logic;
        D               : in     vl_logic;
        value           : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end CounterWithParallelLoad;
