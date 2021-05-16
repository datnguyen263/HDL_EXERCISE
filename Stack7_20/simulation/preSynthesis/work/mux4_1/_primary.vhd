library verilog;
use verilog.vl_types.all;
entity mux4_1 is
    port(
        mux_out         : out    vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        I3              : in     vl_logic;
        I2              : in     vl_logic;
        I1              : in     vl_logic;
        I0              : in     vl_logic
    );
end mux4_1;
