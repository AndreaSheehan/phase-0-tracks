#Client Metadata
# => Prompt user for
# 	 name
# 	 age
# 	 number of children
# 	 decor theme
# 	 pets
# 	 major dislikes
# 	 
# 	 Convert data to correct type

# 	  
# 	  
client = Hash.new
# 	 
puts "Enter client name"
 client[:name] = gets.chomp

puts "Enter age of client"
client[:age] = gets.chomp.to_i

puts "Enter number of children residing with client: "
client[:children] = gets.chomp.to_i

puts " Enter the clients preferred decor"
client[:decor] = gets.chomp

puts "Does the client have pets? Y/N"
client[:pets] = gets.chomp

puts "List any known major client dislikes"
client[:dislikes] = gets.chomp

p client
# 	 
puts "Review data. Then enter a category you would like to update: 
name, age, children, decor, pets, dislikes.
If no update is required type: 'none'."	 

update = gets.chomp

if update == "none"
	puts "Thank you for your time!"

else 
	puts "What is the new input for #{update.to_sym}"
end

	p client


# 	 Print Hash to screen
# 	 
# 	 Provide chance to update a key. 
#
#
#
#