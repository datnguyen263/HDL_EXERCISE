library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        \out\           : out    vl_logic_vector(9 downto 0);
        D               : in     vl_logic;
        E               : in     vl_logic;
        SET             : in     vl_logic;
        RST             : in     vl_logic;
        CLK             : in     vl_logic
    );
end counter;
