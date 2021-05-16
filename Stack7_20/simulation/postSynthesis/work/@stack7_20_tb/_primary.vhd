library verilog;
use verilog.vl_types.all;
entity Stack7_20_tb is
    generic(
        M               : integer := 40;
        N               : integer := 7
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of M : constant is 1;
    attribute mti_svvh_generic_type of N : constant is 1;
end Stack7_20_tb;
