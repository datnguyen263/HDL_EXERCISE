library verilog;
use verilog.vl_types.all;
entity RAM_IO_vlg_check_tst is
    port(
        IO              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end RAM_IO_vlg_check_tst;
