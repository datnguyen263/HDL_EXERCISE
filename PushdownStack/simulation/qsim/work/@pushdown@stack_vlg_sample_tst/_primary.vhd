library verilog;
use verilog.vl_types.all;
entity PushdownStack_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Enable          : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 0);
        PushPop         : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PushdownStack_vlg_sample_tst;
