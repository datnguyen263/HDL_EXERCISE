library verilog;
use verilog.vl_types.all;
entity decoder2to4 is
    port(
        \Out\           : out    vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(1 downto 0);
        en              : in     vl_logic
    );
end decoder2to4;
