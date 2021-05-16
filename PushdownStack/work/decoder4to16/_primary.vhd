library verilog;
use verilog.vl_types.all;
entity decoder4to16 is
    port(
        O               : out    vl_logic_vector(15 downto 0);
        I               : in     vl_logic_vector(3 downto 0);
        EN              : in     vl_logic
    );
end decoder4to16;
