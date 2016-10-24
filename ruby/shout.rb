=begin
module Shout

   def self.yell_angrily(words)
   		words + "!!!" + " :("
   end

   def self.yelling_happily(words)
   		words + "  YAHOO!!!" + " :)"
   end

end


p Shout.yelling_happily("hello world")
p Shout.yell_angrily("hello world")
=end

module Shout
   
   def yell_angrily(words)
   		words + "!!!" + " :("
   end

   def yelling_happily(words)
   		words + "  YAHOO!!!" + " :)"
   end
 
end


# Write two classes representing anything that might shout, 
# and include the Shout module in those classes

class Monkey
	include Shout
end

class Coach
	include Shout
end

# DRIVER CODE


#  instantiates instances of your classes and 
#  calls the two module methods on each instance

jacco = Monkey.new
p jacco.yelling_happily("I'M A MONKEY BUT I WON THE LOTTERY!")
p jacco.yell_angrily("I can't believe they won't pay me in bananas")

ditka = Coach.new
p ditka.yelling_happily("We won the super bowl!")
p ditka.yell_angrily("Get off the field punter; you're terrible")











