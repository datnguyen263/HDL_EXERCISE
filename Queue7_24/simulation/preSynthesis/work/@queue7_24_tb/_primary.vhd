library verilog;
use verilog.vl_types.all;
entity Queue7_24_tb is
    generic(
        M               : integer := 40;
        N               : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of M : constant is 1;
    attribute mti_svvh_generic_type of N : constant is 1;
end Queue7_24_tb;
