library verilog;
use verilog.vl_types.all;
entity decoder3to8 is
    port(
        \Out\           : out    vl_logic_vector(7 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        en              : in     vl_logic
    );
end decoder3to8;
