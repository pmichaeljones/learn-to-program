def sing_beer_song(number_of_bottles)
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
	
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
		'sixteen', 'seventeen', 'eighteen', 'nineteen']
	
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

	hundred = "hundred"
	thousand = "thousand"

	#create english number answer string

	english_number = ''

	#break up number into string to see how many digits it contains

	bottle_as_array = number_of_bottles.to_s.split("")

		while bottle_as_array.length > 0 do

			if bottle_as_array.length == 4 #we need to work out thousands
				puts english_number + "#{small_numbers[bottle_as_array[0]]}-" + thousand
				#remove one digit
				bottle_as_array = bottle_as_array.pop(3)
				#make it an integer again
				bottle_as_array_to_integer = bottle_as_array.join("").to_i
				#recursion time!
				sing_beer_song(bottle_as_array_to_integer)

			elsif bottle_as_array.length == 3 #we have to work out hundreds
				puts english_number+ "#{small_numbers[bottle_as_array[0]]}-" + hundred
				#remove one digit
				bottle_as_array = bottle_as_array.pop(2)
				#make it an integer again
				bottle_as_array_to_integer = bottle_as_array.join("").to_i
				#recursion time!
				sing_beer_song(bottle_as_array_to_integer)

			elsif bottle_as_array.length == 2 #we are working with # < 100 now
				puts english_number+ "#{middle_numbers[bottle_as_array[0]]}-"
				#remove one digit
				bottle_as_array = bottle_as_array.pop()
				#make it an integer again
				bottle_as_array_to_integer = bottle_as_array.join("").to_i
				#recursion time!
				sing_beer_song(bottle_as_array_to_integer)
			
			elsif bottle_as_array.length == 1 #final digit time
			
			end #closes the IF statements

		end #closes the while loop

	puts english_number

end