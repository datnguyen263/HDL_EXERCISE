library verilog;
use verilog.vl_types.all;
entity CounterWithParallelLoad is
    port(
        \OUT\           : out    vl_logic_vector(10 downto 0);
        clk             : in     vl_logic;
        load            : in     vl_logic;
        En              : in     vl_logic;
        D               : in     vl_logic;
        value           : in     vl_logic_vector(10 downto 0)
    );
end CounterWithParallelLoad;
