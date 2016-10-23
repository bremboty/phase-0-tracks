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


end

# TEST CODE
iroh = Puppy.new
iroh.fetch("stick")
iroh.speak(8)
iroh.roll_over
iroh.dog_years(8)
iroh.feed_treat




# User Interface
