# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def create_list(str_list)	
	array = str_list.split(' ')
	#returns an array of items
	#for every item, take the item and put it in its own array with a default value
	new_array = array.collect { |item| [item, 0] }
	#this format allows us to quickly make a hash
	hash = new_array.to_h
	return hash
	#returns a hash
end



# Method to add an item to a list
# input: item name and optional quantity
# steps:   USE .store to add an item and quantity
# output: new list
def add_item(hash, x, y)
	hash[x] = y
	return hash
end


# Method to remove an item from the list
# input: item name
# steps: find item name (the key) in hash then delete it and its value
# output: new/updated hash
def remove_item(hash, item_name)
	hash.reject! {|k,v| k == item_name}
	return hash
end



# Method to update the quantity of an item
# input: hash, key, value
# steps: change the value for a given key
# output: hash
def update_quantity(hash, key, value)
	hash[key] = value
	return hash
end


# Method to print a list and make it look pretty
# input: string of items seperated by a space
# steps: break list into seperate items.  iterate through items and print each one
# output: list of those items printed neatly
def print_list(hash)
	hash.each {|k, v| p "You have #{v} #{k}"}
end

#TEST CODE

#Create a new list
#Add the following items to your list
#Lemonade, qty: 2
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4
#Remove the Lemonade from your list
#Update the Ice Cream quantity to 1
#Print out your list (Is this readable and nice looking)?


create_list('lemonade tomatoes onions ice-cream')
grocery_hash = create_list('lemonade tomatoes onions ice-cream')
p grocery_hash

add_item(grocery_hash, 'meat', 2)
p grocery_hash

update_quantity(grocery_hash, 'tomatoes', 3)
update_quantity(grocery_hash, 'onions', 1)
update_quantity(grocery_hash, 'lemonade', 2)
update_quantity(grocery_hash, 'ice-cream', 2)
p grocery_hash

remove_item(grocery_hash, 'lemonade')
p grocery_hash

update_quantity(grocery_hash, 'ice-cream', 1)
p grocery_hash

print_list(grocery_hash)



# What did you learn about pseudocode from working on this challenge?
	# I learned that I am too specific with my steps but way to vague with my labels for things (like parameter labels)
# What are the tradeoffs of using arrays and hashes for this challenge?
	# I don't understand the question.  Are you asking for pros/cons of using a hash vs. an array for this challenge?
	# An array of arrays might have worked, but a hash is the best way to store key/value pairs 
# What does a method return?
	#explicit - whatever you tell it to return
	#implicit - whatevers left of the input after the last line of method
# What kind of things can you pass into methods as arguments?
	#any object (hashes, arrays included).   any method.
# How can you pass information between methods?
	# by making it an instance variable with an @.    hash would instead be @hash
# What concepts were solidified in this challenge, and what concepts are still confusing?
	# I still haven't heard a set way to pseudocode.  A lot of 'you'll figure out what works.'  well, havent so far.  still need direction.

























