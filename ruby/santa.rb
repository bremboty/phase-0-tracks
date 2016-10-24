# Eventually, your simulator will build thousands of Santas

# start by defining a Santa class in phase-0-tracks/ruby/santa.rb. 
# Your class should have three instance methods:

# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" 

# An eat_milk_and_cookies method that takes a cookie type 
# (example: "snickerdoodle") as a parameter and prints "That was a good 
# type of cookie here>!" 

# An initialize method that prints "Initializing Santa instance ...".

# Add a bit of code below your class declaration to check that you're 
# able to initialize a Santa instance and call its methods.



#Update your Santa class with the following attributes:

#gender, which will be a string passed in on initialization

#ethnicity, which will be a string passed in on initialization

#reindeer_ranking, an array of reindeer from most preferred to least preferred. 
#This is not passed in on initialization; it simply gets a default value of 
#["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#age, which is not passed in on initialization and defaults to 0


# Code
# start by defining a Santa class in phase-0-tracks/ruby/santa.rb. 
class Santa
	#speak method that will print "Ho, ho, ho! Haaaappy holidays!"
	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end
	# An eat_milk_and_cookies method that takes a cookie type 
	# (example: "snickerdoodle") as a parameter and prints "That was a good 
	# type of cookie here>!" 
	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type} cookie!"
	end

	# An initialize method that prints "Initializing Santa instance ..."
	def initialize(gender, ethnicity)
		p "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	# celebrate_birthday should age Santa by one year.  takes in age and returns age + 1
	def celebrate_birthday(age)
		@age = age + 1
		return @age
	end

	def get_mad_at(name)
		name = name.to_s
		# move object to back of array.  
		# .push adds an object to the back of an array
		# .delete_if {|x| x < 7}   deletes an item under a certain condition
		# if name is in the array delete it then add it back to the end with .push
		if @reindeer_ranking.include?(name)
			#delete the array item if it is the same as name
			@reindeer_ranking.delete_if {|str| str == name}
			#and add name back to end of array
			@reindeer_ranking << name
			
		#otherwise do nothing
		end
		return @reindeer_ranking
	end
	# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
	
	#SETTER METHODS
	def gender=(new_gender)
		@gender = new_gender
	end

	def age=(new_age)
		@age = new_age
	end
=begin
	Add two "getter" methods as well:

The method age should simply return @age.
The method ethnicity should return @ethnicity.
=end
	#GETTER METHODS
	def gender
		@gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end
end

=begin
Write a program that creates lots of Santas. 

Use our array of example genders and an array of example 
ethnicities to create your Santas with a randomly selected gender and a randomly selected ethnicity. 

Set your new Santa's age to a random number between 0 and 140.
No need to store your Santas in a data structure, but your program should print 
out the attributes of each Santa using the instance methods that give you 
access to that data.
=end


#define method to intake a number and make that many santas
def santa_maker(num)
	#establish some known genders and ethnicities to be randomly chosen from
	genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
	ethnicitys = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
	# initiate empty santa instance array
	santas = []
	# could use user input here for the number of random santas needed
	num = num.to_i
	num2 = genders.length
	num3 = ethnicitys.length
	#create a santa however many times we ask for with a random gender and random ethnicity
	num.times {|int| santas << Santa.new(genders[rand(num2)], ethnicitys[rand(num3)]) }
	#set age to random from 0-140 for each santa in the santas array
	santas.each {|santa| santa.age = rand(140)}	
	#prepare to print the santas neatly
	list = santas.each {|x| x}
	# print santas
	return list
end

 










# Add a bit of code below your class declaration to check that you're 
# able to initialize a Santa instance and call its methods.
roger = Santa.new("male", "white")
roger.eat_milk_and_cookies("sugar")
roger.speak
p "*************************************************"
p roger.age
roger.celebrate_birthday(56)
p roger.age
p "*************************************************"
p roger
roger.get_mad_at("Dancer")
p roger
p "*************************************************"
p roger.gender
roger.gender = "female"
p roger.gender
p "*************************************************"
p roger.ethnicity
p roger.age
p "*************************************************"
p santa_maker(5)
p santa_maker(15)