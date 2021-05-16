library verilog;
use verilog.vl_types.all;
entity mc8bit is
    port(
        \out\           : out    vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        WE              : in     vl_logic;
        RS              : in     vl_logic
    );
end mc8bit;
