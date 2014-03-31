def old_school_roman_numeral(year)
	#start with biggest numeral(M)
	if year % 1000 == 0
		(year/1000).times { print "M" }
		puts
	else
		(year/1000).times { print "M" }
		puts "Reminder: #{year % 1000}"
	end



end

old_school_roman_numeral(1000)
old_school_roman_numeral(5000)
old_school_roman_numeral(7000)