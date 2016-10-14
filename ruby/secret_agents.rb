	#An encrypt method that advances every letter of a string 
	#one letter forward. So "abc" would become "bcd". 
	#For now, you can assume lowercase input and output. 
	#Any space character should remain a space character -- no change made.


	#method that... 
	#take in a string
	#break it into letters
	#turn each letter into next letter in alphabet
	#join letters into solid string
	#return that new string

	#we'll need a method to "#turn each letter into next letter in alphabet"
	#I'll call it letter_encryptor
	#First I'll build a hash that pairs each letter with the letter I would like it to become (post-encryption)
	def letter_encoder_match_list 
		{'a' => 'b', 'b' => 'c', 'c' => 'd', 'd' => 'e',
	     'e' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'i',
	     'i' => 'j', 'j' => 'k', 'k' => 'l', 'l' => 'm',
	     'm' => 'n', 'n' => 'o', 'o' => 'p', 'p' => 'q',
	     'q' => 'r', 'r' => 's', 's' => 't', 't' => 'u',
	     'u' => 'v', 'v' => 'w', 'w' => 'x', 'x' => 'y',
	     'y' => 'z', 'z' => 'a'}
	end

	#Then use that hash to manage my letter encryptor program 

	def letter_encryptor(letter)
		#since my hash is all in strings and lowercase
		lowercase_letter = letter.to_s.downcase
		letter_encoder_match_list[lowercase_letter]
	end


	#now we build the string encryptor

	def encrypt(string)
		#we need to break the string into letters
		letters = string.split("")
		#we need a place where the new letters will be stored
		new_string = []
		#for each letter, run our encryption program...
		letters.each do |letter|
			new_letter = letter_encryptor(letter)
		#then push the new letter into our holder called new_string
			new_string.push(new_letter)
		end
		#combine the array of letters into one solid string
		new_string.join
	end




	#A decrypt method that reverses the process above. 
	#Note that Ruby doesn't have a built-in method for going backward one letter. 
	#How can you find out where a letter is in the alphabet, 
	#then access the letter right before it? 
	#Hint: In the IRB session above, you learned how to ask a 
	#string for the index of a letter. "abcdefghijklmnopqrstuvwxyz" counts as a string.

	#my decrypt method is the same as above just with a different hash

	def letter_UNencoder_match_list 
	{'a' => 'z', 'b' => 'a', 'c' => 'b', 'd' => 'c',
     'e' => 'd', 'f' => 'e', 'g' => 'f', 'h' => 'g',
     'h' => 'i', 'j' => 'i', 'k' => 'j', 'l' => 'k',
     'm' => 'l', 'n' => 'm', 'o' => 'n', 'p' => 'o',
     'q' => 'p', 'r' => 'q', 's' => 'r', 't' => 's',
     'u' => 't', 'v' => 'u', 'w' => 'u', 'x' => 'w',
     'y' => 'x', 'z' => 'y'}
	end


	def letter_UNencryptor(letter)
		lowercase_letter = letter.to_s.downcase
		letter_UNencoder_match_list[lowercase_letter]
	end


	def decrypt(string)
		letters = string.split("")
		new_string = []
		letters.each do |letter|
			new_letter = letter_UNencryptor(letter)
			new_string.push(new_letter)
		end
		new_string.join
	end



#puts encrypt("abc")  
#puts encrypt("zed")  
#puts decrypt("bcd")  
#puts decrypt("afe")  
#puts decrypt(encrypt("swordfish"))

#Asks a secret agent (the user) whether they would like to decrypt or encrypt a password
#Asks them for the password
#Conducts the requested operation, prints the result to the screen, and exits

#ask for encrypt or decrypt
#if encrypt then run word into enryption
#if decrypt run word through decrypt method.
#print results

#ask whether to encrypt or decrypt
p "Hello secret agent!  Would you like to encrypt or decrypt a password?"
answer = gets.chomp

#set up a loop to guide user to just say encrypt or decrypt
until (answer == "encrypt" or answer == "decrypt")
	p "Please type just 'encrypt' or 'decrypt' please"
	answer = gets.chomp
end
#the implicit result of this loop will have to be either encrypt or decrypt
#if answer is encrypt
if answer == "encrypt"
	#ask what word needs encryption
	puts "what word would you like encrypted?"
	word = gets.chomp
	#run the answer through encryption method and define result as new word
	new_word = encrypt(word)
	#print results in a sentence
	puts "Your encrypted word is '#{new_word}'"
	#if the answer is decrypt then do the same thing with the decryption program
elsif answer == "decrypt"
	puts "what word would you like Decrypted?"
	word = gets.chomp
	new_word = decrypt(word)
	puts "Your decrypted word is '#{new_word}'"
end



















