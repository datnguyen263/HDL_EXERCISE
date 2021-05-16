library verilog;
use verilog.vl_types.all;
entity dff_setrst is
    port(
        Q               : out    vl_logic;
        Qn              : out    vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic;
        RST             : in     vl_logic;
        CLK             : in     vl_logic
    );
end dff_setrst;
