library verilog;
use verilog.vl_types.all;
entity HAS is
    port(
        Cout            : out    vl_logic;
        Dout            : out    vl_logic;
        Cin             : in     vl_logic;
        Qin             : in     vl_logic;
        Qin_NOT         : in     vl_logic;
        Din             : in     vl_logic;
        Din_NOT         : in     vl_logic
    );
end HAS;
