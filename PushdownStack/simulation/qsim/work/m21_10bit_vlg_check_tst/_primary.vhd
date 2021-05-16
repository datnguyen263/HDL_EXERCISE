library verilog;
use verilog.vl_types.all;
entity m21_10bit_vlg_check_tst is
    port(
        Y               : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end m21_10bit_vlg_check_tst;
