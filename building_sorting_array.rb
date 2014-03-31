growing_array = Array.new
puts 'First word please: '
input = gets.chomp

	until input == ""
		growing_array << input
		puts growing_array.sort().to_s
		input = gets.chomp
	end