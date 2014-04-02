
# Define a method that takes an integer and returns the integer in english

# Let's break the integer into pieces by converting to string then splitting

# Iterate over the array and have it PUTS the name for each element based on dictionary

def say_it_in_english_please(number)

	number_array = number.to_s.split("") #split the number into separate digits

	number_array.each do |x|
	
		if x == 1
			puts "One-"

	end


end
