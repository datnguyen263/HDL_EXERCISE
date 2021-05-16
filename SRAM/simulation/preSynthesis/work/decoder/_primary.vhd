library verilog;
use verilog.vl_types.all;
entity decoder is
    generic(
        a               : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        b               : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        c               : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0);
        d               : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi0, Hi0);
        e               : vl_logic_vector(31 downto 0) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0)
    );
    port(
        \out\           : out    vl_logic_vector(31 downto 0);
        sel             : in     vl_logic_vector(4 downto 0);
        en              : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of a : constant is 2;
    attribute mti_svvh_generic_type of b : constant is 2;
    attribute mti_svvh_generic_type of c : constant is 2;
    attribute mti_svvh_generic_type of d : constant is 2;
    attribute mti_svvh_generic_type of e : constant is 2;
end decoder;
