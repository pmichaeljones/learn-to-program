def old_school_roman_numeral(year)
	#start with biggest numeral(M)
	if year % 1000 == 0
		(year/1000).times { print "M" }
		puts
	else
		(year/1000).times { print "M" }
		remainder = year % 1000
			if remainder % 500 == 0
				(remainder/500).times { print "D" }
				puts
			else
				(remainder/500).times {print "D" }
				remainder = remainder % 500
					if remainder % 100 == 0
						(remainder/100).times { print "C" }
						puts
					else
						(remainder/100).times {print "C" }
						remainder = remainder % 100
							if remainder % 50 == 0
								(remainder/50).times {print "L" }
								puts
							else
								(remainder/50).times {print "L" }
								remainder = remainder % 50
									if remainder % 10 == 0
										(remainder/10).times {print "X" }
										puts
									else
										(remainder/10).times {print "X" }
										remainder = remainder % 10
											if remainder % 5 == 0
												(remainder/5).times {print "V" }
												puts
											else
												(remainder/5).times {print "V" }
												remainder = remainder % 5
												(remainder/1).times {print "I" }
												puts
											end
									end
							end
					end

			end
	end

end


old_school_roman_numeral(6573)