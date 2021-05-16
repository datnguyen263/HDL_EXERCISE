library verilog;
use verilog.vl_types.all;
entity d_flipflop_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        Qn              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end d_flipflop_vlg_check_tst;
