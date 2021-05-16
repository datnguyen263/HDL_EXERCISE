library verilog;
use verilog.vl_types.all;
entity decoder5to32 is
    port(
        O               : out    vl_logic_vector(31 downto 0);
        I               : in     vl_logic_vector(4 downto 0);
        EN              : in     vl_logic
    );
end decoder5to32;
