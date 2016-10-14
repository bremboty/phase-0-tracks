# pseudocode and write a program that will allow an interior designer to enter 
#  the details of a given client: the client's name, age, number of children, 
#  decor theme, and so on

client = {

	name: "",
	age: "",
	number_of_children:  "",
	decor_theme:  "",

}

# Prompt the designer/user for all of this information.
p "what is your name?"
# Convert any user input to the appropriate data type.
name = gets.chomp.to_s
client[:name] = name

p "your age?"
age = gets.chomp.to_i
client[:age] = age

p "how many kids you got?"
kid_number = gets.chomp.to_i
client[number_of_children:] = kid_number

p "what's your decor theme?"
theme = gets.chomp.to_s
client[decor_theme:] = theme

# Print the hash back out to the screen when the designer 
#   has answered all of the questions.

p client

# Give the user the opportunity to update a key 

loop do |variable|
	#  Give the user the opportunity to update a key
	puts "Tell me what key you want to update or type none"
	key = gets.chomp
	#  If the designer says "none", skip it. But if the designer enters 
	break if key == "none"
	puts "What is your updated response?"
	value = gets.chomp
	client[key.to_sym] = value
end


# Print the latest version of the hash, and exit the program.
p client 




















