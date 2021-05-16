library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        \out\           : out    vl_logic;
        carry_bit       : out    vl_logic;
        D               : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic
    );
end HAS;
