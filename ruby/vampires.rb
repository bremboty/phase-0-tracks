puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i
variable = 0

until variable == number_of_employees
	
	#That whole thing
	
	puts "What is your name?"
	name = gets.chomp.to_s

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	if (2016 - birth_year == age)
		age_right = true
	else
		age_right = false
	end

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

	puts "I'm going to ask you to list all of your allergies one at a time. After typing each allergy press enter.  When you are done type done.  Okay give me an allergy."
	allergy = gets.chomp.to_s


	if allergy == "done"
		puts "Good for you, no allergies"
	elsif allergy == "sunshine"
		puts "Probably a Vampire"
	else 
		until (allergy == "done" or allergy == "sunshine")
			puts "Give me another allergy or type done if you're out"
			allergy = gets.chomp.to_s
			if allergy == "done"
				break
			elsif allergy == "sunshine"
				puts "Probably a Vampire"
			end
		end
	end




	if (name == "Drake Cula" or name == "Tu Fang")
		puts "Definitely a vampire."
	elsif !age_right && !eats_garlic && !wants_insurance
		puts "Almost certainly a vampire."
	elsif !age_right && (!eats_garlic || !wants_insurance)
		puts "Probably a vampire"
	elsif age_right && (eats_garlic || wants_insurance)
		puts "Probably not a vampire."
	else
		puts "Results inconclusive."
	end
	
	variable += 1 
	
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."