library verilog;
use verilog.vl_types.all;
entity MemoryCell is
    port(
        \Out\           : out    vl_logic;
        \In\            : in     vl_logic;
        WE              : in     vl_logic;
        CS              : in     vl_logic
    );
end MemoryCell;
