puts "whats the hamsters name?"
name = gets.chomp.to_s

puts "whats its volume level 1-10?"
volume = gets.chomp.to_i

puts "fur color?"
color = gets.chomp.to_s

puts "is it a good adoption candidate y/n?"
user_input = gets.chomp
	
until (user_input == "y" or user_input == "n")
    puts "Please enter a y or n" 
    user_input = gets.chomp
end

if user_input == "y"    
   good_candidate = true 
else   
   good_candidate = false 
end

puts "what is the hamsters approximate age?"
age = gets.chomp

if age.empty?
	age = nil
else
	age = age.to_i
end

if good_candidate
	puts "okay buddy, here's what we've got. the hamsters name is #{name}.  It has a volume of #{volume}. It has #{color} fur. The hamsters age is #{age}. Overall it makes a good candidate for adoption"
else
	puts "okay buddy, heres what weve got. the hamsters name is #{name}.  It has a volume of #{volume}.  It has #{color} fur.  The hamsters age is #{age}. Overall it does NOT make a good candidate for adoption"
end
