library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    port(
        OutA            : out    vl_logic_vector(31 downto 0);
        OutB            : out    vl_logic_vector(31 downto 0);
        \IN\            : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        WE              : in     vl_logic;
        WA              : in     vl_logic_vector(4 downto 0);
        RE_A            : in     vl_logic;
        RE_B            : in     vl_logic;
        RA_A            : in     vl_logic_vector(4 downto 0);
        RA_B            : in     vl_logic_vector(4 downto 0)
    );
end RegisterFile;
