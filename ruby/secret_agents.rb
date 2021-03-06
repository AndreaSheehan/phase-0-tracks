#Method is advancing the string forward by one letter
#First loop will change first letter, next loop second letter, and so on.
#Set variable index to 0 so that it begins at the first letter of the string
#

def encrypt(string)
	index = 0
	while index < string.length
		if string[index] == " "
		elsif string[index] == "z"
			string[index] = "a"
		else
			string[index] =
				string[index].next
		end
		index += 1
	end

	return string
end


#get string length
#id first letter and then find the index of that letter in the alphabet.
#reassign that letter in the string to alphabet[index - 1]
#move on to the next letter until we reach the length
#The decrypt output we want for each letter == the index of that 
#letter from the string in the alphabet minus 1.
			


def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	index = 0
	while index < string.length
		if string[index] == ""
		else 
			n = alphabet.index(string[index])
			string[index] = alphabet[n - 1]
		end
			index +=1
	end
	return string
end
	


# Testing encrypt decrypt outputs
# 
#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")
#decrypt(encrypt("swordfish"))

# The final nested method should first return an encrypted value for swordfish.
# It then uses the encrypted value as the argument for the decrypt method.
# It then will output the original string by reversing the encryption.
# 
# OUR DRIVER CODE
# Ask user to choose method: decrypt or encrypt a password

puts "Welcome Agent, would you like to (a) encrypt or (b) decrypt your password?"
choice = gets.chomp

# Ask for a password (string)
puts "What is your password?"
password = gets.chomp

# Encrypt or decrypt according to preference, print result and exit.
if choice == "a"
	p encrypt(password)
elsif choice == "b"
	p decrypt(password)
else
	puts "You are definitely a vampire."
end

