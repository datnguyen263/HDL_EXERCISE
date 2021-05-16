library verilog;
use verilog.vl_types.all;
entity sr_latch_gated is
    port(
        Q               : out    vl_logic;
        Qn              : out    vl_logic;
        G               : in     vl_logic;
        S               : in     vl_logic;
        R               : in     vl_logic
    );
end sr_latch_gated;
