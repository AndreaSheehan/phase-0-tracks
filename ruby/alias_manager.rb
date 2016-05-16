


#method changes a vowel to the another vowel
#vowels = ("aeiou")
#vowels.split('')  
#did not successfully integrate the methods for consonants
#and vowels below 

$vowels = ['a','e','i','o','u']

def mix_vowel
$vowels.shuffle
 end
#p mix_vowel

puts '-' * 10

$consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']

def mix_consonants 
$consonants.shuffle	

end
#p mix_consonants

puts '-' * 10

def identity_maker
puts "Enter your first and last name"
input = gets.chomp
name = input.downcase.split.reverse.join(' ')
new_name = name.chars
#new_name is now an array of the characters in the reversed name
#

identity = new_name.shuffle.join


end
identity_maker

#ideas:
	
#a = [ "a", "b", "c", "d", "e" ]
#a.replace([ "x", "y", "z" ])   #=> ["x", "y", "z"]
#a                              #=> ["x", "y", "z"]
 	
# 	if letter==" "
# 		letter
 		
# 	elsif letter.include?($vowels) 
 #			$vowels[3]
 #	else letter $consonant[2]
# 	end
# end
