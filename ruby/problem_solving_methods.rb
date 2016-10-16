# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. 
# arr = [42, 89, 23, 1]
# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil
# You are allowed to use .length and .each.

# establish an array
arr = [42, 89, 23, 1]

def method(arr, num)
	# build a hash since I am relating the number to its index
	# arr.each.with_index will put every item with its index.
	# convert to a hash because this data is hashy (a list of relating two things)
	hash = Hash[arr.each.with_index.to_h]
	# hash[num] will return what corresponds with num which will be the index
	p hash[num]
end 

method(arr, 89)


