


#method I used isolates first and last name and scrambles the letters to
#to return a new name. 
#etc  I could  not successfully integrate the methods for consonants
#and vowels below but they don't mess anything up since they 
#are properly defined so i left them down below 
#


puts '-' * 10

def alias_manager(real_name)
# 
# 
valid_input = false
until valid_input
	puts "Enter the agents real first and last name for processing, or type:'quit'"
	real_name = gets.chomp
	if real_name == "quit"
		valid_input = true
		puts "Try again soon"
		break
	end
#	downcase_name = real_name.downcase
	split_name = real_name.downcase.split(' ')
	split_name.reverse!
	
	first_name = split_name[0].split('')
	last_name = split_name[1].split('')
	new_first = first_name.shuffle.join.capitalize! 
	new_last = last_name.shuffle.join.capitalize!
	
	new_alias = new_first + " " + new_last
	puts "Here is your new alias: #{new_alias}. It may look a bit odd but you are supposed to be foreign. So, just go ahead and make up your own pronunciation!"
		

 end
end


alias_manager('')

#other idea

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

# Attempts at changing vowel to the another vowel
#vowels = ("aeiou")
#vowels.split('')  

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
#p mix_consonants# second version---

#other ideas:
	
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
