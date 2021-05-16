library verilog;
use verilog.vl_types.all;
entity CounterWithParallelLoad_tb is
    generic(
        N               : integer := 8;
        M               : integer := 40
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
    attribute mti_svvh_generic_type of M : constant is 1;
end CounterWithParallelLoad_tb;
