library verilog;
use verilog.vl_types.all;
entity decoder_main is
    port(
        out_main        : out    vl_logic_vector(1023 downto 0);
        sel_main        : in     vl_logic_vector(9 downto 0);
        en_main         : in     vl_logic
    );
end decoder_main;
