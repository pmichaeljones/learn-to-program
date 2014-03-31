puts "Hi Honey! Give Grammy a kiss."
print ">> "
input_text = gets.chomp()

while true
	case input_text

	when input_text.downcase #if text is downcase
		puts "HUH? Speak up Sonny!"
		print ">> "
		input_text = gets.chomp()

	when input_text.capitalize #if it's capcase
		puts "Huh? Speak up Sonny!"
		print ">> "
		input_text = gets.chomp()

	when "BYE!" #exit process
		puts "You have a great day!"
		Process.exit(0)

	when input_text.upcase #if text is yelling (all caps)
		puts "No, not since 1938."
		print ">> "
		input_text = gets.chomp()
	end
end
