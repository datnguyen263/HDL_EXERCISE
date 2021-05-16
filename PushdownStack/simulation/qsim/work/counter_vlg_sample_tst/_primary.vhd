library verilog;
use verilog.vl_types.all;
entity counter_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        E               : in     vl_logic;
        RST             : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end counter_vlg_sample_tst;
