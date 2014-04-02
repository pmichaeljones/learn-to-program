#define method that takes an array as an argument

#In an effort to find the solution, I like to write out the English wording.

#I will first find the index lenth of the array

#Using RAND I will fetch 1 element from the array passed on random index

#I'll then push this random element onto a new array called shuffle_array

#Ill repeat the process until the original array's length == 0

def shuffle_array(array)

shuffle_array = [] #this is where each random element from array will be pushed

	while array.length != 0 #loop the function until the array is empty

		array_index_length = array.length #find out how long the array is

		random_element = array.fetch(rand(array_index_length)) #choose a random element using fetch an a random number based on the current array length

		shuffle_array << random_element #put the random element into the new array

		array.delete(random_element) #erase the random element from the input array and start over
	end

	puts shuffle_array.to_s

end


