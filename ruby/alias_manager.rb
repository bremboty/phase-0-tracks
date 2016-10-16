spys = [
	"bob sanders",
	"jill burns",
	"arthur ants",
]

# Swapping the first and last name.
# take in a two word string and return a string with those words reversed
# method-name(str) -> new-str


def name_reverse(str)
	#break string into array of words
	str = str.split(' ')
	str.reverse!
	str.join(' ')
end


# swap the order of those words
# 



# Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 

def vowel_adv(str)
  vowels = ["a", "e", "i", "o", "u"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate[vowels.index(char)]
    else
      char
    end
  end
  str_new.join
end


# and all of the consonants (everything else besides the vowels) to the next 
# consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', 
# and 'd' would become 'f'.

def consonant_change(str)
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
	str = str.split('')
	new_str = str.map do |letter| 
		if consonants.include? letter 
			consonants.rotate[consonants.index(letter)]
		else
			letter
		end
		
		
	end
	new_str.join
end 

# put it all together
def name_coder(str)
	str = vowel_adv(str)
	str = consonant_change(str)
	str = name_reverse(str)
end

# takes all the spys in the array and runs their names through the name_coder then prints a neat list of the results
new_spy_name_array = spys.map do |spy| p name_coder(spy) end

p name_coder("tyler levad")
new_spy_name_array

