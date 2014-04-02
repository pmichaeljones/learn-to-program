def sort(arr)
	rec_sort(arr, [])
end

def rec_sort(unsorted, sorted)
	if unsorted.length <= 0
		return sorted
	end

	puts "At the top, unsorted is #{unsorted}"

	smallest = unsorted.pop
	puts "At the top, smallest is #{smallest}"
	still_unsorted = []

	unsorted.each do |tested_object|
			puts "#{tested_object} vs #{smallest}"
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
			puts "TRUE SIDE still_unsorted is #{still_unsorted}"
			puts "TRUE SIDE smallest is #{smallest}"
		else
			still_unsorted.push tested_object
			puts "FALSE SIDE still_unsorted is #{still_unsorted}"
			puts "FALSE SIDE smallest is #{smallest}"
		end
	end

	sorted.push(smallest)
	puts "Before recursion, sorted is #{sorted}"
	puts "------recursion starting----------"

	rec_sort(still_unsorted, sorted)
end

sort(['b','d','a','e','c'])
