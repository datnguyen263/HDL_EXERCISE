library verilog;
use verilog.vl_types.all;
entity masterslave_dff is
    port(
        Q               : out    vl_logic;
        Qbar            : out    vl_logic;
        D               : in     vl_logic;
        clk             : in     vl_logic;
        clear           : in     vl_logic
    );
end masterslave_dff;
