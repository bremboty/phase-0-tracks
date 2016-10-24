=begin 
Using plain old English in a text file or other scratch pad, pseudocode a class for 
a word-guessing game that meets the following specifications. Assume your driver code 
will handle input and output as far as the user is concerned. In other words, write a 
class designed for a computer program to use, not one designed for a human to use directly, 
then use driver code to bridge the gap between human and Ruby object.

One user can enter a word (or phrase, if you would like your game to support that), and another 
user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the length of the word.
Repeated guesses do not count against the user.

The guessing player receives continual feedback on the current state of the word. So if the secret 
word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would 
become "_ _ _ c _ _ _" after the user enters a guess of "c".
=end
secret_word = 'unicorn'

array = secret_word.split('')

p 'enter a letter'
guess = gets.chomp.to_s

	i = 0 
	new_arr = []
	until i >= array.length	
		if guess == array[i]
			new_arr << array[i]
		else guess != array[i]
			new_arr << "."
		end
		i += 1 
		
	end
	p new_arr
	new_arr.each do |letter|





#define a class called word game
class WordGame

	#def initialize will takes a word from user 1 as a parameter
	#store this word as the secret word
	#set number of guesses or guesses available variable here
	def initialize(word)
		num = word.length
		@secret_word = word
		#num of guesses available is related to the word length
		#maybe original num of guesses available is word length times 2
		@guesses_left = num * 3
		@is_over = false
	end


	#game is over when @guesses_left == 0 or until guess == secret word


	#Repeated guesses do not count against the user.
	#store the user2 guesses in an array
	@guesses = []
	#if array doesnt include the current guess then decrease available guesses
	if !@guesses.include?(guess)
		#add guess to array of guesses
		@guesses << guess
		#available guesses = original available guesses minus the num of guesses in user2s guess array
		@guesses_left = @guesses_left - 1
	#if array includes the current guess then don't decrease available guesses or add guess to array
	end




	#break the secret word into letters
	letters = @secret_word.split
	#after each guess print each letter if the letter contains anything from the guess
	letters.each do |letter| 
		#print each letter if the letter contains anything from the guess
		p 
	end
	#if the letter doesnt contain anything from the guess then print it as _

	#congrats if guess correct
	#boos if guess wrong or out of guesses

end

# USER INTERFACE

#The user should get a congratulatory message if they win, and a taunting message if they lose.
if game_over?
	p "YOU LOSE"
else
	p "CONGRATS"
end

#user2 has to type the secret word to get out of the loop
#or reach the max num of guess to exit the loop




