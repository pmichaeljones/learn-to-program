def sing_beer_song(number_of_bottles, english_number = '')
	#set some key variables for building answer string
	
	small_numbers = {
		'1' => 'one',
		'2' => 'two',
		'3' => 'three',
		'4' => 'four',
		'5' => 'five',
		'6' => 'six',
		'7' => 'seven',
		'8' => 'eight',
		'9' => 'nine'
	}
	
	teenagers = {
		'1' => 'eleven', 
		'2' => 'twelve', 
		'3' => 'thirteen', 
		'4' => 'fourteen',
		'5' => 'fifteen',
		'6' => 'sixteen',
		'7' => 'seventeen',
		'8' => 'eighteen', 
		'9' => 'nineteen'
	}
	
	middle_numbers = {
		'2' => 'twenty', #starts at 2 becuase of teenagers
		'3' => 'thirty',
		'4' => 'forty',
		'5' => 'fifty',
		'6' => 'sixty',
		'7' => 'seventy',
		'8' => 'eighty',
		'9' => 'ninety'
	}

	hundred = "hundred "
	thousand = "thousand "

	#create english number answer string

	#break up number into string to see how many digits it contains

	bottle_as_array = number_of_bottles.to_s.split("")

		while bottle_as_array.length > 0 do

			if bottle_as_array.length == 4 #we need to work out thousands
				english_number = english_number + "#{small_numbers[bottle_as_array[0]]}-" + thousand
				#remove one digit
				bottle_as_array = bottle_as_array.pop(3)
				#make it an integer again
				bottle_as_array_to_integer = bottle_as_array.join("").to_i
				#recursion time!
				sing_beer_song(bottle_as_array_to_integer, english_number)

			elsif bottle_as_array.length == 3 #we have to work out hundreds
				english_number = english_number+ "#{small_numbers[bottle_as_array[0]]}-" + hundred
				#remove one digit
				bottle_as_array = bottle_as_array.pop(2)
				#make it an integer again
				bottle_as_array_to_integer = bottle_as_array.join("").to_i
				#recursion time!
				sing_beer_song(bottle_as_array_to_integer, english_number)

			elsif bottle_as_array.length == 2 #we are working with # < 100 now
				
				#exception for 11, 12, 13, etc
				if bottle_as_array[0] == "1"
					english_number = english_number + "#{teenagers[bottle_as_array[1]]}"
					return english_number
				else
					
					english_number = english_number + "#{middle_numbers[bottle_as_array[0]]}-"
					#remove one digit
					bottle_as_array = bottle_as_array.pop()
					#make it an integer again
					bottle_as_array_to_integer = bottle_as_array.to_i
					#recursion time!
					sing_beer_song(bottle_as_array_to_integer, english_number)
				end

			elsif bottle_as_array.length == 1 #final digit time
				english_number = english_number + "#{small_numbers[bottle_as_array[0]]}"
				return english_number

			end #closes the IF statements

		end #closes the while loop

end