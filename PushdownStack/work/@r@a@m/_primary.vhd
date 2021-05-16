library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(7 downto 0);
        RWS             : in     vl_logic;
        CS              : in     vl_logic;
        ADDR            : in     vl_logic_vector(9 downto 0)
    );
end RAM;
