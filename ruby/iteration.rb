#iteration.rb

#Release 0: Explore Blocks
# write a method that takes a block
# your method should print a status message before & after running the block
# array.each {|item| block} → array
# 
# EXAMPLE ONE
# def attendance
puts "reached the top"
	yield
puts "yadabadabing!"

end
	attendance {puts "hello!" }

# EXAMPLE TWO
def solve_quadratic
	puts "Solving for the quadratic equation:"
	print "a: "
	a=gets.chomp.to_f
	print "b: "
	b=gets.chomp.to_f
	print "c: "
	c=gets.chomp.to_f
	yield(a,b,c)
	puts "I love math :)"
	puts "My partner is a supergeek!"
end

solve_quadratic do |a,b,c| 
	#x = (-b+sqrt(b^2-4*a*c))/(2*a) or x = (-b-sqrt(b^2-4*a*c))/(2*a)
	puts "y=#{a}x^2+#{b}x+#{c}"
	root1 = (-b+Math.sqrt(b**2-4*a*c))/(2*a)
	root2 = (-b-Math.sqrt(b**2-4*a*c))/(2*a)
	puts "x = #{root1} and #{root2}"
end


#EXAMPLE 3
# Method allows input of multiple names and 
# block allows it to print to a list.
def attendance
	print "name 1:" 
		name1=gets.chomp.capitalize
	print "name 2:" 
		name2=gets.chomp.capitalize
	print "name 3:" 
		name3=gets.chomp.capitalize
	print "More names separated by a comma:"
	morenames=gets.chomp.capitalize
	
		
yield(name1,name2,name3,*morenames)
puts "So glad to see you all!"

end
	attendance do|name1,name2,name3,*morenames|
	puts "Here are today's participants: #{name1}, #{name2}, #{name3}, #{morenames.join(',')}"
end

# Tried to figure out capitalizing the array, and played with use of 
# #.split and #.map  would like to figure that part out. 


#Release 1: Use each, map, and map!
#Do the thing:
#1. declare an array and a hash, and populate them with data
#2. demonstrate iterating through each using .each, and then using .map! (modify data)
#   note: can't call .map! on a hash
#   Print the data structures before and after each call to demonstrate modification


#array uses number to "index" into it and ONLY numbers
# ahash lets you use ANYTHING and not just numbers as your index.  

#make array of pets we own.  Use. each. then .map
puts '-' * 10

pets = ["hamster", "guinea pig", "cat","dog"]
petsCaps=[]

pets.each do |animal|
	petsCaps<<animal.capitalize
end

puts "pets: #{pets}"
puts '_' * 10
puts "\npetsCaps: #{petsCaps}"

puts "-" *10

#use map here to invoke the block for each element and create a new array
#containing the values returned by te block.
pets = ["hamster", "guinea pig", "cat","dog"]
p pets

pets.map! do |animal|
	animal.capitalize
end

puts pets


#make array of pets we own along with corresponding names
#   Use. each. then .map
puts '-' * 10

pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}

pets.each do |type, name|
puts "My favorite is the #{type}"
puts "Her name is #{name}"
end
puts "Heck!  They are ALL my favorites!!"



#Release 2: Use Documentation
#Do the thing:
#Use the documenttion to find other Array and Hash methods that take blocks
#add sample calls -- one for the array and one for the hash
#1. iterates through the times, deleting any that meet a certain condition
#2. filters a data structure for only items that DO satisfy a certain condition
#3. filters a data structure for ONLY items satisfying a certain condition
#4. remove items from a data structure until the condion of the block evaluates false, then stops