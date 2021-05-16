library verilog;
use verilog.vl_types.all;
entity RegisterFile is
    generic(
        N               : integer := 31
    );
    port(
        OutA            : out    vl_logic_vector;
        OutB            : out    vl_logic_vector;
        \IN\            : in     vl_logic_vector;
        clk             : in     vl_logic;
        WE              : in     vl_logic;
        WA              : in     vl_logic_vector(4 downto 0);
        RE_A            : in     vl_logic;
        RE_B            : in     vl_logic;
        RA_A            : in     vl_logic_vector(4 downto 0);
        RA_B            : in     vl_logic_vector(4 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end RegisterFile;
