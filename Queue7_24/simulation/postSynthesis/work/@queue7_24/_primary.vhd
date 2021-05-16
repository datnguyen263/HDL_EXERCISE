library verilog;
use verilog.vl_types.all;
entity Queue7_24 is
    port(
        IOports         : inout  vl_logic_vector(7 downto 0);
        empty           : out    vl_logic;
        full            : out    vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic;
        ReadWrite       : in     vl_logic
    );
end Queue7_24;
