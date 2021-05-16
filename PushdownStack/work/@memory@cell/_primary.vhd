library verilog;
use verilog.vl_types.all;
entity MemoryCell is
    port(
        \out\           : out    vl_logic;
        \in\            : in     vl_logic;
        WE              : in     vl_logic;
        RS              : in     vl_logic
    );
end MemoryCell;
