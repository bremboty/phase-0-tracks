# driver code
class Puppy
  
    def fetch(toy)
      puts "I brought back the #{toy}!"
      toy
    end


	# Add a speak method that takes an integer, and then prints "Woof!" that many times.
	def speak(num)
		num.to_i
		num.times do |i|
			p "Woof!"
		end
	end


	# Add a roll_over method that just prints "*rolls over*".
	def roll_over
		p "*rolls over*"
	end

	

	# Add a dog_years method that takes an integer (of human years) and converts 
	# that number to dog years, returning a new integer.

	def dog_years(num)
		num.to_i
		dog_age = num * 7
		p "Your dog is #{dog_age}"
	end


	# method that takes in a name and says #name is dead
	def feed_treat
		p "*throws treat*"
	end

	# Add a method to your Puppy class named initialize. It should print 
	# "Initializing new puppy instance ..."
	def initialize
		p "Initializing new puppy instance ..."
	end

end

# design and implement your own class
class Car


	# it should have an initialize method 
	attr_accessor :num
    def initialize (num)
        @num = num
    end

	# and at least two other instance methods
	def start_car
		p "ch.chh.chhhvvv.vv..VROOMMM! rumble rumble rumble..."
	end

	def fill_up(gallons)
		gallons.to_i
		p "I put #{gallons} gallons in car#{@num}"
	end

end

# Use a loop to make 50 instances of your class.
cars = (1..50).collect do |i|
	Car.new(i)
end

# Modify your loop so that it stores all of the instances in a data structure.

# Iterate over that data structure using .each and call the instance methods you wrote on each 
# instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on
# your instances of Gymnast.

cars.each do |car|
	car.start_car
	car.fill_up(5)
end
	











# TEST CODE
iroh = Puppy.new
iroh.fetch("stick")
iroh.speak(8)
iroh.roll_over
iroh.dog_years(8)
iroh.feed_treat

mazda = Car.new("mazda")
mazda.fill_up(12)
mazda.start_car







# User Interface
