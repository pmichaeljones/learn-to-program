def roman_numeral(year)
	roman = ""
	roman << "M" * (year / 1000)
	year -= (year / 1000) * 1000
	
	if year / 100 == 0
		if year / 50 == 1
				roman << "L"
				year -= 50
				if year / 9 == 1
					roman << "IX"
					year -= 9

				elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
				elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 				elsif year / 1 == 4
 						roman << "IV"
 				end
				
		elsif (year / 10 == 1) || (year / 10 == 2) || (year / 10 == 3)
				roman << "X" * (year / 10)
				year -= (year / 10) * 10
					
					if year / 9 == 1
					roman << "IX"
					year -= 9

					elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
					elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 					elsif year / 1 == 4
 						roman << "IV"
 					end


		elsif (year / 10 == 4)
				roman << "XL"
				year -= 40
				if year / 9 == 1
					roman << "IX"
					year -= 9
				elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
				elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 				elsif year / 1 == 4
 						roman << "IV"
 				end
		end


	elsif year / 100 == 1
		roman << "C"
		year -= 100
		if year / 50 == 1
				roman << "L"
				year -= 50
				if year / 9 == 1
					roman << "IX"
					year -= 9

				elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
				elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 				elsif year / 1 == 4
 						roman << "IV"
 				end
				
		elsif (year / 10 == 1) || (year / 10 == 2) || (year / 10 == 3)
				roman << "X" * (year / 10)
				year -= (year / 10) * 10
					
					if year / 9 == 1
					roman << "IX"
					year -= 9

					elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
					elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 					elsif year / 1 == 4
 						roman << "IV"
 					end


		elsif (year / 10 == 4)
				roman << "XL"
				year -= 40
				if year / 9 == 1
					roman << "IX"
					year -= 9
				elsif year / 5 == 1
						roman << "V"
						year -= 5
							if (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 								roman << "I" * (year / 10)
 							elsif year / 1 == 4
 								roman << "IV"
 							end
				elsif (year / 1 == 1) || (year / 1 == 2) || (year / 1 == 3)
 						roman << "I" * (year / 10)
 				elsif year / 1 == 4
 						roman << "IV"
 				end
		end
	

	elsif year / 100 == 2
		roman << "CC"
		year -= 200


	elsif year / 100 == 3
		roman << "CCC"
		year -= 300


	elsif year / 100 == 4
	 	roman << "CD"
	 	year -= 400


	elsif year / 500 == 1
		roman << "D"
		year -= 500


	end

	puts roman
	puts year

end
