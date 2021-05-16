library verilog;
use verilog.vl_types.all;
entity RAM_IO_vlg_sample_tst is
    port(
        ADDR            : in     vl_logic_vector(9 downto 0);
        CS              : in     vl_logic;
        IO              : in     vl_logic_vector(7 downto 0);
        RWS             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end RAM_IO_vlg_sample_tst;
