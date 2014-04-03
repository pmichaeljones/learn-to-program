def sing_beer_song(number_of_bottles)
	#set some key variables for building answer string
	small_numbers = ['one', 'two', 'three', 'four', 'five', 'six',
		'seven', 'eight', 'nine', 'ten']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen',
		'sixteen', 'seventeen', 'eighteen', 'nineteen']
	middle_numbers = ['twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy',
		'eighty', 'ninety']
	hundred = "hundred"
	thousand = "thousand"

	#create english number answer string
	english_number = ''

	#break up number into string to see how many digits it contains

	bottles_as_array = number_of_bottles.to_s.split("")

	while bottle_as_array.length > 0

		if bottle_as_array.length == 4 #we need to work out thousands

		if bottle_as_array.length == 3 #we have to work out hundreds
		
		if bottle_as_array.length == 2 #we are working with # < 100 now
		
		if bottle_as_array.legnth == 1 #final digit time
		
		end

	end

	puts english_number
	



	#Make the array into an integer again before feeding it back to the beast(recursion)
	bottle_as_array_to_integer = bottle_as_array.join("").to_i

