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
	p string
end





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
	p string
end


# Testing encrypt decrypt outputs
# 
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("swordfish"))
# The final nested method should first return an encrypted value for swordfish.
# It then uses the encrypted value as the argument for the decrypt method.
# It then will output the original string by reversing the encryption.


