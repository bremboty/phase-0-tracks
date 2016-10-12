puts "What is your name?"
name = gets.chomp.to_s

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you y/n?"
garlic_bread = gets.chomp.to_s

until (garlic_bread == "y" or garlic_bread == "n")
	puts "Please use y or n"
	garlic_bread = gets.chomp.to_s
end

if garlic_bread == "y"
	eats_garlic = true
else
	eats_garlic = false
end


puts "Would you like to enroll in the company’s health insurance y/n?"
insurance = gets.chomp.to_s

until (insurance == "y" or insurance == "n")
	puts "Please use y or n"
	insurance = gets.chomp.to_i
end

if insurance == "y"
	wants_insurance = true
else
	wants_insurance = false
end


