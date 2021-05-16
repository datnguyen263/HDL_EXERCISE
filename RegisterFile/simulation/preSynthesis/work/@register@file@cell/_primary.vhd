library verilog;
use verilog.vl_types.all;
entity RegisterFileCell is
    port(
        OutA            : out    vl_logic;
        OutB            : out    vl_logic;
        RE_A            : in     vl_logic;
        RE_B            : in     vl_logic;
        WE              : in     vl_logic;
        \In\            : in     vl_logic;
        clk             : in     vl_logic
    );
end RegisterFileCell;
