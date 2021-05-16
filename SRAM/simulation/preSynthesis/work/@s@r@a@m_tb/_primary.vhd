library verilog;
use verilog.vl_types.all;
entity SRAM_tb is
    generic(
        N               : integer := 10
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end SRAM_tb;
