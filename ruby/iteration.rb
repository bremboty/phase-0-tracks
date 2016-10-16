cart = ["apple", "bannana", "avocado"]

store = {

	"cereal" => 4.25,
	"carrots" => 1.50,
	"chicken" => 5.00,
}

cart.each {|item| p "You have #{item} in your cart"}

store.each {|item, price| p "#{item} is #{price} would you like some #{item}?"}

cart.map! do |item|
	"You don't need this fatty!"
end

p "after map!"
p cart 




# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

array1 = [1, 2, 3, 4, 5, 6, 7, 8]
hash1 = {
	1 => "one",
	2 => "two",
	3 => "three",
	4 => "four",
	5 => "five",
	6 => "six",
	7 => "seven",
	8 => "eight",
}
# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
p array1
p hash1
p array1.delete_if{|number| number.even? }
p hash1.delete_if{|key, value|  key == 6  } 

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
array1 << 2
p array1
p hash1
p array1.keep_if{|x| x.odd? }
p hash1.keep_if{|key, value| key.even?}

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
p array1
p hash1
p array1.take_while{|x| x < 4}
p array1.drop_while{|x| x < 4}
p array1

p hash1.select{|k, v| k > 5}
p hash1



# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
p array1.drop_while{|x| x < 4}












