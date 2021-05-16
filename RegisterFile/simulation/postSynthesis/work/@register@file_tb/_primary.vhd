library verilog;
use verilog.vl_types.all;
entity RegisterFile_tb is
    generic(
        N               : integer := 40
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end RegisterFile_tb;
