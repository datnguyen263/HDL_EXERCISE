library verilog;
use verilog.vl_types.all;
entity decoder3to8 is
    port(
        O               : out    vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(2 downto 0);
        EN              : in     vl_logic
    );
end decoder3to8;
