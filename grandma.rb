puts "Hi Honey! Give Grammy a kiss."
print ">> "
input_text = gets.chomp()

while true
	case input_text

	when input_text.downcase #if text is downcase
		puts "HUH? Speak up Sonny!"
		input_text = gets.chomp()

	when input_text.upcase #if text is yelling (all caps)
		puts "No, not since 1938."
		input_text = gets.chomp()

	when "BYE!" #exit process
		puts "You have a great day!"
		Process.exit(0)
	end
end
