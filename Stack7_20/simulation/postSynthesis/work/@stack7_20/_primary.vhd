library verilog;
use verilog.vl_types.all;
entity Stack7_20 is
    port(
        counter         : out    vl_logic_vector(7 downto 0);
        \OUT\           : out    vl_logic_vector(7 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic;
        \IN\            : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        PushPop         : in     vl_logic;
        En              : in     vl_logic;
        reset           : in     vl_logic
    );
end Stack7_20;
