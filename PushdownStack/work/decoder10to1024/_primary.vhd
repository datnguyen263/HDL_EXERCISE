library verilog;
use verilog.vl_types.all;
entity decoder10to1024 is
    port(
        O               : out    vl_logic_vector(1023 downto 0);
        I               : in     vl_logic_vector(9 downto 0);
        EN              : in     vl_logic
    );
end decoder10to1024;
