library verilog;
use verilog.vl_types.all;
entity decoder5to32 is
    port(
        \Out\           : out    vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(4 downto 0);
        en              : in     vl_logic
    );
end decoder5to32;
