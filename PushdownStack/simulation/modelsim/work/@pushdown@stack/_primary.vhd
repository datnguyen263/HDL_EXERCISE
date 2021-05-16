library verilog;
use verilog.vl_types.all;
entity PushdownStack is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(7 downto 0);
        Empty           : out    vl_logic;
        Full            : out    vl_logic;
        Reset           : in     vl_logic;
        PushPop         : in     vl_logic;
        Enable          : in     vl_logic;
        CLK             : in     vl_logic
    );
end PushdownStack;
