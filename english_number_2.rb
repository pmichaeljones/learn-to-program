def english_number(number)

	case number
	when 1
		puts "One"
	when 2
		puts "Two"
	when 3
		puts "Three"
	when 4
		puts "Four"
	when 5
		puts "Five"
	when 6
		puts "Six"
	when 7 
		puts "Seven"
	when 8
		puts "Eight"
	when 9
		puts "Nine"
	when 10
		puts "Ten"
	when 11
		puts "Eleven"
	when 12
		puts "Twelve"
	when 13
		puts "Thirteen"
	when 14
		puts "Fourteen"
	when 15
		puts "Fifteen"
	when 16
		puts "Sixteen"
	when 17
		puts "Seventeen"
	when 18 
		puts "Eighteen"
	when 19
		puts "Nineteen"
	end

	if number / 10 == 2 && number != 20
		puts "Twenty#{second_number(number)}"
	elsif number / 10 == 3
		puts "Thirty#{second_number(number)}"
	elsif number / 10 == 4
		puts "Forty#{second_number(number)}"
	elsif number / 10 == 5
		puts "Fifty#{second_number(number)}"
	elsif number / 10 == 6
		puts "Sixty#{second_number(number)}"
	elsif number / 10 == 7
		puts "Seventy#{second_number(number)}"
	elsif number / 10 == 8
		puts "Eighty#{second_number(number)}"
	elsif number / 10 == 9
		puts "Ninety#{second_number(number)}"
	end

end

def second_number(number)
	number_as_array = number.to_s.split("")

	if number_as_array[1] == "0"
		nil
	elsif number_as_array[1] == "1"
		"-One"
	elsif number_as_array[1] == "2"
		"-Two"
	elsif number_as_array[1] == "3"
		"-Three"
	elsif number_as_array[1] == "4"
		"-Four"
	elsif number_as_array[1] == "5"
		"-Five"
	elsif number_as_array[1] == "6"
		"-Six"
	elsif number_as_array[1] == "7" 
		"-Seven"
	elsif number_as_array[1] == "8"
		"-Eight"
	elsif number_as_array[1] == "9"
		"-Nine"
	end
end