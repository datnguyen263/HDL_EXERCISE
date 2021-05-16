library verilog;
use verilog.vl_types.all;
entity D_ff is
    port(
        Qout            : out    vl_logic;
        Din             : in     vl_logic;
        clk             : in     vl_logic
    );
end D_ff;
