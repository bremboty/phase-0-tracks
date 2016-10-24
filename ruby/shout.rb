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