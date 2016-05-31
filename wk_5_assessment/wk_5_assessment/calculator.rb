#Write a calculate method that 
#takes three parameters: an integer, 
#an operator string (example: "+"), and another integer. 
#The method should execute the operation and return 
#the result, an integer. The method should be able to
# handle the +, -, *, and / operations. 
# For example, calculate(4, '+', 5) should return 9.

#Write driver code that tests all 
#four operations and prints the results.
#
def calculate( a, operator, c )
	if operator == "+"
		a + c
	elsif operator == "-"
		a - c
	elsif operator == "*"
		a * c
	elsif operator == "/"
		a/c
		
	end
	
end


#calculate(4, "+", 5)=> 9
#calculate(10, "-", 5)=> 5
#calculate(10, "*", 5)=> 50
#calculate(10, "/", 5) => 2
#
#Comment out your driver code and create a user interface for
# your program: Prompt the user for a calculation that the user 
# would like to perform, and use your method to give the user a result. 
# For instance, 
#if the user types "4 + 5", the program should print a 
#result of 9 and then exit. You can assume correct input on the user's part.
#
puts "Greetings from Coco the calculator! What calculation would you 
like to perform? (Please use the following format: 4 + 5)"

user_input = gets.chomp.split
#user_input = gets.chomp.split.to_s

user_input.calculate

# i give up.  my brain is too scrambled and 
# i am feeling too defeated to think


# different stuff I tried
# 
# #if user_input.include?("+")
#	p	("a" + "c")
#	elsif user_input.include?("-")
#	p	("a" - "c")
#	elsif user_input.include?("*")
#		p ("a" * "c")
#	elsif user_input.include?("/")
#	p	("a"/"c")

#end


#user_input.each do |n|
#	if n.include? ('+', "-", '*', '/')
#		n
#	else n =
#		n.to_i
#	
#	end	
#end

#p user_input
# user_input.calculate

