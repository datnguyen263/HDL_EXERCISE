library verilog;
use verilog.vl_types.all;
entity Queue7_24 is
    generic(
        N               : integer := 8;
        M               : integer := 10;
        gnd             : vl_logic := Hi0
    );
    port(
        IOports         : inout  vl_logic_vector;
        empty           : out    vl_logic;
        full            : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        ReadWrite       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
    attribute mti_svvh_generic_type of M : constant is 1;
    attribute mti_svvh_generic_type of gnd : constant is 1;
end Queue7_24;
