def english_number(number)

	if number / 10 == 2
		puts "Twenty-#{second_number(number)}"
	elsif number / 10 == 3
		puts "Thirty-#{second_number(number)}"
	elsif number / 10 == 4
		puts "Forty-#{second_number(number)}"
	elsif number / 10 == 5
		puts "Fifty-#{second_number(number)}"
	elsif number / 10 == 6
		puts "Sixty-#{second_number(number)}"
	elsif number / 10 == 7
		puts "Seventy-#{second_number(number)}"
	elsif number / 10 == 8
		puts "Eighty-#{second_number(number)}"
	elsif number / 10 == 9
		puts "Ninety-#{second_number(number)}"
	end
	
end

def second_number(number)
	number_as_array = number.to_s.split("")

	if number_as_array[1] == "1"
		"One"
	elsif number_as_array[1] == "2"
		"Two"
	elsif number_as_array[1] == "3"
		"Three"
	elsif number_as_array[1] == "4"
		"Four"
	elsif number_as_array[1] == "5"
		"Five"
	elsif number_as_array[1] == "6"
		"Six"
	elsif number_as_array[1] == "7" 
		"Seven"
	elsif number_as_array[1] == "8"
		"Eight"
	elsif number_as_array[1] == "9"
		"Nine"
	end
end