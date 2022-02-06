library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
--use ieee.std_logic_unsigned.all; Do not use with numeric_std
use ieee.std_logic_unsigned.all;

entity SAMPLE is
port(
    clk : in STD_LOGIC; 
    button1, button2, button3, button4 : in STD_LOGIC;  -- button 3 służy do szyfrowania 
	 suwak1, suwak2, suwak3, suwak4 : in std_logic;  -- suwaki do key
	 dioda1, dioda2, dioda3, dioda4 : out std_logic; -- diosy do key
	 suwak5, suwak6, suwak7, suwak8, suwak9, suwak10 : in std_logic; -- ustawiamy suwaki i na ich podstawie dokunujemy deszyfrowania 
	 dioda5, dioda6, dioda7, dioda8, dioda9, dioda10 : out std_logic; -- wizualnie przedstawiają stan suwaków 
	 
    Display_1 : out STD_LOGIC_VECTOR(3 downto 0); -- do testów, wizualne pokazanie stanu 
	 Display_2 : out STD_LOGIC_VECTOR(7 downto 0); -- WYŚWIETLACZ 2 
	 Display_3 : out STD_LOGIC_VECTOR(3 downto 0); -- do testów, wizualne pokazanie stanu 
	 Display_4 : out STD_LOGIC_VECTOR(7 downto 0); -- WYŚWIETLACZ 4 
	 
	 Display_1_true : out STD_LOGIC_VECTOR(7 downto 0);-- WYŚWIETLACZ 1 
	 Display_3_true : out STD_LOGIC_VECTOR(7 downto 0);-- WYŚWIETLACZ 3 
	 
	 output : out std_logic_vector (1 downto 0) -- do testów czy losowanie działa
	 
);
end entity SAMPLE;

architecture behavioral of SAMPLE is

    signal button1_r : std_logic_vector(2 downto 0);  -- sygnał pomocniczy do wykrywania rising edge button1
    signal button2_r : std_logic_vector(2 downto 0);  -- sygnał pomocniczy do wykrywania rising edge button2
	 signal button3_r : std_logic_vector(2 downto 0);  -- sygnał pomocniczy do wykrywania rising edge button3
	 signal button4_r : std_logic_vector(2 downto 0);  -- sygnał pomocniczy do wykrywania rising edge button4 
    signal output_i  : unsigned(3 downto 0) := (others => '0');  -- sterowanie pierwszym wyświetlaczem 
	 signal output_display_2  : unsigned(7 downto 0) := (others => '0');  -- sterowanie drugim wyświetlaczem 
	 signal output_display_3  : unsigned(3 downto 0) := (others => '0');  -- sterowanie trzecim wyświetlaczem 
	 signal output_display_4  : unsigned(7 downto 0) := (others => '0');  -- sterowanie czwartym wyświetlaczem 
	 
	 signal sigEncryption : unsigned (3 downto 0) := (others => '0');-- służy do deszyfrowania i przekazania informacji do sygnału sterującego wyswietlaczem trzecim
	 
	 
	 signal sigDEncryption : unsigned (3 downto 0) := (others => '0'); -- służy do szyfrowania i przekazania informacji do sygnału sterującego wyswietlaczem pierwszym
	 
	 signal sigDisplay2 : unsigned (7 downto 0) := (others => '0'); -- pomocniczy do sterowania drugim wyświetlaczem 
	 
	 
	 	   SIGNAL Currstate, Nextstate: std_logic_vector (1 DOWNTO 0); -- sygnał do losowania liczb
         SIGNAL feedback: std_logic;  -- sygnał do lsowania liczb 
begin

    process(clk)
    begin
        if rising_edge(clk) then
            button1_r <= button1_r(button1_r'left-1 downto 0) & button1;
            button2_r <= button2_r(button2_r'left-1 downto 0) & button2;
				button3_r <= button3_r(button3_r'left-1 downto 0) & button3;
				button4_r <= button4_r(button4_r'left-1 downto 0) & button4;

            if button1_r(button1_r'left downto button1_r'left-1) = "01" then -- Button1 rising || ustawia słowa które nastęnie będziemy szyfrować
				    if (output_i = "1111") then 
					   output_i <= "0000";
					else 
                output_i <= output_i + 1;
					 end if;
            elsif button2_r(button2_r'left downto button2_r'left-1) = "01" then -- Button2 rising || odpowiada za RESET 
                output_i <= "0000";
					 output_display_2 <= "00000000";
					 output_display_3 <= "0000";
					 output_display_4 <= "00000000";
					 
				elsif button3_r(button3_r'left downto button3_r'left-1) = "01" then -- Button3 rising || odpowiada za SZYFROWANIE
				    -- output_i <= sigEncryption;
					  output_display_2 <= sigDisplay2;
					  output_display_3 <= sigEncryption;
					  output_display_4 <= "01101110"; -- H 
				elsif button4_r(button4_r'left downto button4_r'left-1) = "01" then -- Button4 rising	|| odpowiada za DESZYFROWANIE 
                 output_display_4 <= "00011100"; -- L 
					  output_display_2 <= "00000000";
					  output_display_3 <= "0000";
			        output_i <=  sigDEncryption;
            end if;
        end if;
    end process;
 
    Display_1 <= std_logic_vector(output_i);
	 Display_2 <= std_logic_vector(output_display_2);
	 Display_3 <= std_logic_vector(output_display_3);
	 Display_4 <= std_logic_vector(output_display_4);
	 
	 
	 process (output_display_3)
	 begin
	 case output_display_3 is
			  when "0000" => Display_3_true <= "11111100"; -- 0
			  when "0001" => Display_3_true <= "01100000"; -- 1
			  when "0010" => Display_3_true <= "11011010"; -- 2
			  when "0011" => Display_3_true <= "11110010"; -- 3
			  when "0100" => Display_3_true <= "01100110"; -- 4
			  when "0101" => Display_3_true <= "10110110"; -- 5
			  when "0110" => Display_3_true <= "10111110"; -- 6
			  when "0111" => Display_3_true <= "11100000"; -- 7
			  when "1000" => Display_3_true <= "11111110"; -- 8
			  when "1001" => Display_3_true <= "11110110"; -- 9
			  when "1010" => Display_3_true <= "11101110"; -- A
			  when "1011" => Display_3_true <= "00111110"; -- B
			  when "1100" => Display_3_true <= "10011100"; -- C
			  when "1101" => Display_3_true <= "01111010"; -- D
			  when "1110" => Display_3_true <= "10011110"; -- E
			  when "1111" => Display_3_true <= "10001110"; -- F
			 -- when others => Display_1 <= "00";
    end case;
	 end process;
	 
	 
	 process (output_i)
	 begin
	 case output_i is
			  when "0000" => Display_1_true <= "11111100"; -- 0
			  when "0001" => Display_1_true <= "01100000"; -- 1
			  when "0010" => Display_1_true <= "11011010"; -- 2
			  when "0011" => Display_1_true <= "11110010"; -- 3
			  when "0100" => Display_1_true <= "01100110"; -- 4
			  when "0101" => Display_1_true <= "10110110"; -- 5
			  when "0110" => Display_1_true <= "10111110"; -- 6
			  when "0111" => Display_1_true <= "11100000"; -- 7
			  when "1000" => Display_1_true <= "11111110"; -- 8
			  when "1001" => Display_1_true <= "11110110"; -- 9
			  when "1010" => Display_1_true <= "11101110"; -- A
			  when "1011" => Display_1_true <= "00111110"; -- B
			  when "1100" => Display_1_true <= "10011100"; -- C
			  when "1101" => Display_1_true <= "01111010"; -- D
			  when "1110" => Display_1_true <= "10011110"; -- E
			  when "1111" => Display_1_true <= "10001110"; -- F
			 -- when others => Display_1 <= "00";
    end case;
	 end process;
	 ------------------------------------------------------------------------------------------------
	 	 LOGIKA: process(button3)
	 begin
	    if rising_edge(button3) then 
                   IF (button1 = '1') THEN
                   Currstate <= (0 => '1', OTHERS =>'0');
                   elsIF (button3 = '1' AND button3'EVENT) THEN
                   Currstate <= Nextstate;
                   END IF;
						 feedback <= Currstate(1) XOR Currstate(0);
                   Nextstate <= feedback & Currstate(1 DOWNTO 1);
                   output <= Currstate;
						 
						 --------  LFSR ------------
						 
				               case Currstate is 
			 	                        when "00" => 
												          sigDisplay2 <= "11111100"; -- 0
		                                        sigEncryption(0) <=  suwak1 xor output_i(0);
			                                     sigEncryption(1) <=  suwak2 xor output_i(1);
			                                     sigEncryption(2) <=  suwak3 xor output_i(2);
			                                     sigEncryption(3) <=  suwak4 xor output_i(3);
												when "01" =>  
												          sigDisplay2 <= "01100000"; -- 1
		                                        sigEncryption(0) <= ('1' NAND output_i(0)) xor suwak1;
			                                     sigEncryption(1) <= ('1' NAND output_i(1)) xor suwak2;
			                                     sigEncryption(2) <= ('1' NAND output_i(2)) xor suwak3;
			                                     sigEncryption(3) <= ('1' NAND output_i(3)) xor suwak4;			
												when "10" => 
												          sigDisplay2 <= "11011010"; -- 2
		                                        sigEncryption(0) <= ('0' NOR output_i(0)) xor suwak1;
			                                     sigEncryption(1) <= ('0' NOR output_i(1)) xor suwak2;
			                                     sigEncryption(2) <= ('0' NOR output_i(2)) xor suwak3;
			                                     sigEncryption(3) <= ('0' NOR output_i(3)) xor suwak4;	
 												when "11" => 
												          sigDisplay2 <= "11110010"; -- 3
		                                        sigEncryption(0) <= ('1' and output_i(0)) xor suwak1;
			                                     sigEncryption(1) <= ('1' and output_i(1)) xor suwak2;
			                                     sigEncryption(2) <= ('1' and output_i(2)) xor suwak3;
			                                     sigEncryption(3) <= ('1' and output_i(3)) xor suwak4;	
									end case;	 
  
		 end if;
	 end process;
	-------------------------------------------------------------------------------- ---------------
	deszyfrowanie: process (button4)
	begin
	   if rising_edge(button4) then 
		       if (suwak5 = '0' and  suwak6 = '0') then  -- deszyfroanie XOR 
				         sigDEncryption(0) <= (suwak1 xor suwak10); 
							sigDEncryption(1) <= (suwak2 xor suwak9); 
							sigDEncryption(2) <= (suwak3 xor suwak8); 
							sigDEncryption(3) <= (suwak4 xor suwak7); 	               
			    elsif (suwak5 = '0' and suwak6 = '1' ) then -- deszyfrowanie nand xor
				         sigDEncryption(0) <= (suwak1 xor suwak10) nand '1'; 
							sigDEncryption(1) <= (suwak2 xor suwak9) nand '1'; 
							sigDEncryption(2) <= (suwak3 xor suwak8) nand '1'; 
							sigDEncryption(3) <= (suwak4 xor suwak7) nand '1'; 				 
				 elsif (suwak5 = '1' and suwak6 = '0' ) then -- deszyfrowanie nor xor
				         sigDEncryption(0) <= (suwak1 xor suwak10) nor '0'; 
							sigDEncryption(1) <= (suwak2 xor suwak9) nor '0'; 
							sigDEncryption(2) <= (suwak3 xor suwak8) nor '0'; 
							sigDEncryption(3) <= (suwak4 xor suwak7) nor '0'; 				 
				 elsif (suwak5 = '1' and suwak6 = '1' ) then -- deszyfrowanie and xor 
				         sigDEncryption(0) <= (suwak1 xor suwak10) and '1'; 
							sigDEncryption(1) <= (suwak2 xor suwak9) and '1'; 
							sigDEncryption(2) <= (suwak3 xor suwak8) and '1'; 
							sigDEncryption(3) <= (suwak4 xor suwak7) and '1'; 
				 end if;
		end if;
	end process;
	----------------------------------------------------------------------------------------------------
	 KEY: process(suwak1, suwak2, suwak3, suwak4, suwak5, suwak6, suwak7, suwak8, suwak9, suwak10)
	 begin
	     if (suwak1 = '1') then 
		     dioda1 <= '1';
			  elsif (suwak1 = '0') then
			  dioda1 <= '0';
		  end if;
		  
		  if (suwak2 = '1') then 
		     dioda2 <= '1';
			  elsif (suwak2 = '0') then
			  dioda2 <= '0';
		  end if;
		  if (suwak3 = '1') then 
		     dioda3 <= '1';
			  elsif (suwak3 = '0') then
			  dioda3 <= '0';
		  end if;
		  if (suwak4 = '1') then 
		     dioda4 <= '1';
			  elsif (suwak4 = '0') then
			  dioda4 <= '0';
		  end if;
		  
		  
		  
		  		  
	     if (suwak5 = '1') then 
		     dioda5 <= '1';
			  elsif (suwak5 = '0') then
			  dioda5 <= '0';
		  end if;
		  
		  if (suwak6 = '1') then 
		     dioda6 <= '1';
			  elsif (suwak6 = '0') then
			  dioda6 <= '0';
		  end if;
		  if (suwak7 = '1') then 
		     dioda7 <= '1';
			  elsif (suwak7 = '0') then
			  dioda7 <= '0';
		  end if;
		  
		  if (suwak8 = '1') then 
		     dioda8 <= '1';
			  elsif (suwak8 = '0') then
			  dioda8 <= '0';
		  end if;
		  
		  
	
	     if (suwak9 = '1') then 
		     dioda9 <= '1';
			  elsif (suwak9 = '0') then
			  dioda9 <= '0';
		  end if;
		  
		  if (suwak10 = '1') then 
		     dioda10 <= '1';
			  elsif (suwak10 = '0') then
			  dioda10 <= '0';
		  end if;	  
	 end process;
	 

end architecture behavioral;