def roman_numeral(year)
	roman = ""
	roman << "M" * (year / 1000)
	year -= (year / 1000) * 1000
	
	if year / 100 == 1
		roman << "C"
		year -= 100
	elsif year / 100 == 2
		roman << "CC"
		year -= 200
	elsif year / 100 == 3
		roman << "CCC"
		year -= 300
	elsif year / 100 == 4
	 	roman << "CD"
	 	year -= 400
	elsif year / 500 <= 1
		roman << "D"
		year -= 500
	end

	puts roman
	puts year

end
