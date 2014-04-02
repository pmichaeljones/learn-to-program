
# Define a method that takes an integer and returns the integer in english

# Let's break the integer into pieces by converting to string then splitting

# Iterate over the array and have it PUTS the name for each element based on dictionary

def say_it_in_english_please(number)

	number_array = number.to_s.split("") #split the number into separate digits

	array_length = number_array.length 

	number_array.each do |x|
	
		if array_length == 1
			if x == "1"
				puts "One"
			elsif x == "2"
				puts "Two"
			elsif x == "3"
				puts "Three"
			elsif x == "4"
				puts "Four"
			elsif x == "5"
				puts "Five"
			elsif x == "6"
				puts "Six"
			elsif x == "7" 
				puts "Seven"
			elsif x == "8"
				puts "Eight"
			elsif x == "9"
				puts "Nine"
			end #finished 1-digit length loop

		elsif array_length == 2
			if x == "1" && x+1 == "2"
				puts "Twelve"
			end

		else #meaning 3-digit number
			puts "One-Hundred"
		end #finishes the array_length if statement

	end #finished the do statement


end
