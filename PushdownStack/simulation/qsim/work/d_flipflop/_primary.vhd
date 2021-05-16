library verilog;
use verilog.vl_types.all;
entity d_flipflop is
    port(
        Q               : out    vl_logic;
        Qn              : out    vl_logic;
        D               : in     vl_logic;
        Clk             : in     vl_logic
    );
end d_flipflop;
