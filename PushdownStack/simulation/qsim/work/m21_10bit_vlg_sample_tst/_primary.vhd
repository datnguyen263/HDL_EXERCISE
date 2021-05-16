library verilog;
use verilog.vl_types.all;
entity m21_10bit_vlg_sample_tst is
    port(
        D0              : in     vl_logic_vector(9 downto 0);
        D1              : in     vl_logic_vector(9 downto 0);
        S               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end m21_10bit_vlg_sample_tst;
