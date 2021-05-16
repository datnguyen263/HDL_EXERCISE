library verilog;
use verilog.vl_types.all;
entity D_latch is
    port(
        Qout            : out    vl_logic;
        en              : in     vl_logic;
        Din             : in     vl_logic
    );
end D_latch;
