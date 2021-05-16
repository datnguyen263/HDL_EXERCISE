library verilog;
use verilog.vl_types.all;
entity PushdownStack_vlg_check_tst is
    port(
        Empty           : in     vl_logic;
        Full            : in     vl_logic;
        O               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end PushdownStack_vlg_check_tst;
