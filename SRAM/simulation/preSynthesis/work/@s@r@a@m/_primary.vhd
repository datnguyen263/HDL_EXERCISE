library verilog;
use verilog.vl_types.all;
entity SRAM is
    port(
        IOports         : inout  vl_logic_vector(7 downto 0);
        RWS             : in     vl_logic;
        CS              : in     vl_logic;
        addr            : in     vl_logic_vector(9 downto 0)
    );
end SRAM;
