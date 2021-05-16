library verilog;
use verilog.vl_types.all;
entity d_latch is
    port(
        Q               : out    vl_logic;
        Qn              : out    vl_logic;
        G               : in     vl_logic;
        D               : in     vl_logic
    );
end d_latch;
