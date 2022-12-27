-------------------------------------------------------------------
-- lfsr.vhd
--
-- 4/6/2011 D. W. Hawkins (dwh@ovro.caltech.edu)
--
-- Linear feedback shift register (LFSR).
--
-- LFSRs are useful for generating pseudo-random binary sequences
-- (PRBS). The PRBS is the 1-bit output of the shift-register.
-- The 'data' output for this component is the LFSR state
-- register, the 1-bit PRBS output is nominally data(0).
--
-- The LFSR component is parameterized by the generics;
--
--   * WIDTH
--      - the number of LFSR states is (2**WIDTH-1)
--
--   * POLYNOMIAL
--      - default generator polynomials are contained in
--        lfsr_pkg.vhd
--
--   * TOPOLOGY
--      - Fibonacci or Galois
--
--   * INVERT
--      - LFSRs can use XOR or XNOR feedback elements.
--      - The state sequence generated by an XNOR feedback
--        is the compliment of the sequence generated by
--        XOR feedback with the complimented start seed.
--      - The LFSR is implemented using XOR feedback, and
--        if the invert option is selected, the seed is
--        inverted before use, and the state inverted
--        before being output.
--
-- See the references (listed below) for additional details on
-- LFSRs.
--
-------------------------------------------------------------------
-- Tap numbering convention
-- ------------------------
--
-- There are two LFSR topologies; Fibonacci and Galois. These
-- topologies are related by a transpose operation. There are
-- two tap numbering conventions found in the literature. The
-- tap numbering convention used in this LFSR is demonstrated
-- by the following PRBS7 example.
--
-- PRBS7 generator definition:
--  * taps [7,6]
--  * generator polynomial g(X) = X^7 + X^6 + 1
--  * binary generator polynomial 1100_0001b.
--
-- Fibonacci form:
--
--        --     --     --     --     --     --      --
--       |  |   |  |   |  |   |  |   |  |   |  |    |  |
--     ->|  |-->|  |-->|  |-->|  |-->|  |-->|  |-*->|  |-*-> OUT
--    |  |> |   |> |   |> |   |> |   |> |   |> | |  |> | |
--    |   --     --     --     --     --     --  |   --  |
--    |X^0 = 1                                   v X^6   |X^7
--    |                                          -       |
--     ---------------------------------------<-|+|<----
--                                               -
-- i.e., the shift-register input is at tap 0, and the output at
-- tap 7. The tap numbers increment in the same direction as
-- the shift-register shifts.
--
-- Galois (transposed) form:
--
--        --        --     --     --     --     --     --
--       |  |  _   |  |   |  |   |  |   |  |   |  |   |  |
--     ->|  |-|+|->|  |-->|  |-->|  |-->|  |-->|  |-->|  |-*-> OUT
--    |  |> |  -   |> |   |> |   |> |   |> |   |> |   |> | |
--    |   --   ^    --     --     --     --     --     --  |
--    |X^7     |X^6                                        |X^0 = 1
--    |        |                                           |
--     ------<-*<------------------------------------------
--
-- i.e., the shift-register input is at tap 7, and the output at
-- tap 0. The tap numbers increment in the opposite direction to
-- the shift-register shift direction.
--
-- Maximal length sequences always have an even number of taps,
-- eg. two or four or six feedback taps (see lfsr_pkg.vhd and [4]).
-- Each set of maximal length taps has a mirror polynomial, where
-- the bits in the binary form of the polynomial are reversed,
-- eg., PRBS7 has the polynomial pairs
--
--             1100_0001b = X^7 + X^6 + 1
--             1000_0011b = X^7 + X   + 1
--
-- Note how the binary format has an odd number of bits, and the
-- polynomial in X has two taps. The pair of mirrored PRBS
-- polynomials generate sequences that run in reverse relative
-- to each other. If a component indicates that it uses a PRBS7,
-- then it may use either format shown here, due to the ambiguity
-- in the definition of tap numbers for the comparison component.
-- The PRBS7 sequence used by SONET uses the polynomial X^7+X^6+1
-- as implemented by this component.
--
-- The shift-registers in the LFSR are implemented using a vector
-- indexed (width-1 downto 0) and shifting occurs towards the LSB
-- regardless of the topology. This allows the LFSR state to
-- be compared to MATLAB or C-code generated LFSR state valuee.
-- To ensure the polynomial taps match the register indexing, the
-- Fibonacci form bit-reverses the polynomial prior to use.
--
-------------------------------------------------------------------
-- Example Generator Polynomials
-- -----------------------------
--
-- MATLAB can list primitive (maximal length sequence) polynomials
-- using its primpoly command, eg.,
--
-- >> dec2hex(primpoly(width, 'all', 'nodisplay'))
-- >> dec2bin(primpoly(width, 'all', 'nodisplay'))
--
-- The following are a selection of the possible polynomials;
--
-- width  polynomial(s) (hex values)
-- -----  -------------
--   3    B, D
--   4    13, 19
--   5    25, 29, 2F, 37, 3B, 3D
--   6    43, 5B, 61, 67, 6D, 73
--   7    83, 89, 8F, 91, 9D, A7, AB, B9
--   8    11D, 12B, 12D, 14D, 15F, 163, 165, 169
--  16    1002D, 10039, 1003F, 10053, 100BD, 100D7, 1012F, 1013D
--
-- primpoly() only handles width up to 16.
--
-- Appendix B in [4] also has a list of maximum length sequences
-- with widths up to 168. The table lists the bit positions in
-- the binary word that are set. Because the polynomials are
-- mirror symmetric, the bits that get set depend on the tap
-- numbering convention. The lfsr_pkg.vhd file generates default
-- polynomials based on the table in [4].
--
-- The repeat time for a 32-bit LFSR running at 50MHz
-- is (2^32-1)/50e6 = 85.9s. Conversely, the length of
-- an LFSR operating at 50MHz that repeats once a day
-- is ceil(log2(86400*50e6)) = 42 bits (1.02 days).
--
-------------------------------------------------------------------
-- References:
-- -----------
--
-- [1] "Linear feedback shift register", Wikipedia
--     http://en.wikipedia.org/wiki/Linear_feedback_shift_register
--
-- [2] "XAPP052: Efficient shift registers, LFSR counters, and
--     long pseudo-random sequence generators", P. Alfke,
--     Xilinx application note, 1996.
--
-- [3] "XAPP211: PN genertors using the SRL macro", A. Miller and
--     M. Gulotta, Xilinx application note (v1.4), 2004.
--
-- [4] "DS257: Linear Feedback Shift Register (v3.0)", Xilinx
--     LogicCore product specification (lfsr.pdf).
--
-- [5] MATLAB communications toolbox (primpoly)
--
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library control;
use control.utilities_pkg.all;
use control.lfsr_pkg.all;

-------------------------------------------------------------------

entity lfsr is
    generic (
        WIDTH      : integer := 3;
        POLYNOMIAL : std_logic_vector := lfsr_polynomial(3);
        TOPOLOGY   : string  := "FIBONACCI"; -- or GALOIS
        INVERT     : boolean := false
    );
    port (
        -- Clock and reset
        clk    : in  std_logic;
        rstN   : in  std_logic;

        -- Load a starting seed
        load   : in  std_logic;
        seed   : in  std_logic_vector(WIDTH-1 downto 0);

        -- Enable control
        enable : in  std_logic;

        -- LFSR register
        data   : out std_logic_vector(WIDTH-1 downto 0)
    );
end entity;

------------------------------------------------------------------

architecture behave of lfsr is

	-- -----------------------------------------------------------
	-- Functions
	-- -----------------------------------------------------------
	--
	-- Convert the LFSR generator polynomial into a
	-- std_logic_vector with the same bit order as the
	-- LFSR state.
	--
	function lfsr_poly return std_logic_vector is
		variable f,g : std_logic_vector(WIDTH downto 0);
	begin
		if (TOPOLOGY = "FIBONACCI") then
			for i in 0 to WIDTH loop
				f(i) := POLYNOMIAL(WIDTH-i);
			end loop;
			return f;
		else
			return g;
		end if;
	end function;

	-- -----------------------------------------------------------
	-- Signals
	-- -----------------------------------------------------------
	--
	-- LFSR load value (seed)
    signal d : std_logic_vector(WIDTH-1 downto 0);

	-- LFSR state
    signal q : std_logic_vector(WIDTH-1 downto 0);

begin

	-- -----------------------------------------------------------
	-- Input/output
	-- -----------------------------------------------------------
	--
	g1: if (INVERT) generate
		d    <= not seed;
		data <= not q;
	end generate;

	g2: if (not INVERT) generate
		d    <= seed;
		data <= q;
	end generate;

	-- -----------------------------------------------------------
	-- Galois
	-- -----------------------------------------------------------
	--
	g3: if (TOPOLOGY = "GALOIS") generate
		process(clk, rstN)
			variable poly : std_logic_vector(WIDTH downto 0) :=
				lfsr_poly;
		begin
			if (rstN = '0') then
				q <= (others => '1');
			elsif rising_edge(clk) then

				-- Load the seed
				if (load = '1') then
					q <= d;
				elsif (enable = '1') then

					-- The MSB always connects to the LSB
					q(WIDTH-1) <= q(0);

					-- Connect the right-shifting register,
					-- making xor connections where the
					-- polynomial has bits set
					for i in WIDTH-1 downto 1 loop
						if (poly(i) = '1') then
							q(i-1) <= q(i) xor q(0);
						else
							q(i-1) <= q(i);
						end if;
					end loop;

				end if;
			end if;
		end process;
	end generate;

	-- -----------------------------------------------------------
	-- Fibonacci
	-- -----------------------------------------------------------
	--
	g4: if (TOPOLOGY = "FIBONACCI") generate
		process(clk, rstN)
			variable poly : std_logic_vector(WIDTH downto 0) :=
				lfsr_poly;
			variable sum : std_logic;
		begin
			if (rstN = '0') then
				q <= (others => '1');
			elsif rising_edge(clk) then

				-- Load the seed
				if (load = '1') then
					q <= d;
				elsif (enable = '1') then

					-- The shift-register input (MSB) is the XOR
					-- sum of the feedback locations (this sum is
					-- typically only 2, 4, or 6 terms)
					sum := '0';
					for i in WIDTH-1 downto 0 loop
						if (poly(i) = '1') then
							sum := sum xor q(i);
						end if;
					end loop;
					q(WIDTH-1) <= sum;

					-- Shift-register connections
					for i in WIDTH-1 downto 1 loop
						q(i-1) <= q(i);
					end loop;

				end if;
			end if;
		end process;
	end generate;

end architecture;