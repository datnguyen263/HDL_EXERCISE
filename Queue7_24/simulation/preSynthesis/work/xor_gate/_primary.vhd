library verilog;
use verilog.vl_types.all;
entity xor_gate is
    port(
        \out\           : out    vl_logic;
        in0             : in     vl_logic;
        in1             : in     vl_logic
    );
end xor_gate;
