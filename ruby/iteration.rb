#iteration.rb
system "clear"

puts "Release 0:"
10.times {print '-'}
puts "\n"
# Release 0: Explore Blocks
# write a method that takes a block
# your method should print a status message before & after running the block
# array.each {|item| block} → array
# 
# EXAMPLE ONE
puts "Release 0: Explore Blocks - Example 1"
10.times {print '-'}
puts "\n"
def attendance
	puts "reached the top"
	yield
	puts "yadabadabing!"
end
attendance {puts "hello!"}

# EXAMPLE TWO
puts "\nRelease 0: Explore Blocks - Example 2"
10.times {print '-'}
puts "\n"
def solve_quadratic
	puts "Solving for the quadratic equation:"
	print "a: "
	a=gets.chomp.to_f
	print "b: "
	b=gets.chomp.to_f
	print "c: "
	c=gets.chomp.to_f
	yield(a,b,c)
	puts "\nI love math :)"
	puts "My partner is a supergeek!\n"
end

solve_quadratic do |a,b,c| 
	#x = (-b+sqrt(b^2-4*a*c))/(2*a) or x = (-b-sqrt(b^2-4*a*c))/(2*a)
	puts "y=#{a}x^2+#{b}x+#{c}"
	if b**2-4*a*c>=0
		root1 = (-b+Math.sqrt(b**2-4*a*c))/(2*a)
		root2 = (-b-Math.sqrt(b**2-4*a*c))/(2*a)
		puts "x = #{root1} and #{root2}"
	else
		puts "There are no real roots."
	end
end

# EXAMPLE 3
"\nRelease 0: Explore Blocks - Example 3"
10.times {print '-'}
puts "\nMethod allows input of multiple names and block allows it to print to a list."

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

# # Tried to figure out capitalizing the array, and played with use of 
# # #.split and #.map  would like to figure that part out. 

puts "\nRelease 1: Use each, map, and map!"
10.times {print '-'}
puts "\n"
# a. declare an array and a hash, and populate them with data
# make array of pets we own.  Use. each. then .map

pets = ["hamster", "guinea pig", "cat","dog"]
petsCaps=[]

pets.each do |animal|
	petsCaps<<animal.capitalize
end

puts "pets: #{pets}"
puts '_' * 10
puts "\npetsCaps: #{petsCaps}"

# make array of pets we own along with corresponding names
# Use. each. then .map
puts "Release 1: demonstrate iterating through each using .each, and then using .map! (modify data)"
10.times {print '-'}
puts "\nPets Array"
pets = ["hamster", "guinea pig", "cat","dog"]
puts "Original #{pets} array"
pets.map! do |animal|
	animal.capitalize
end
puts "Capitalizing #{pets} array"


10.times {print '-'}
pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}
puts "\nPets Hash"

pets.each do |type, name|
	puts "My favorite is the #{type}"
	puts "Her name is #{name}"
end
puts "Heck!  They are ALL my favorites!!"

# Release 2: Use Documentation
# a. iterates through the times, deleting any that meet a certain condition
puts "\nRelease 2: Array and Hash methods that take blocks"
10.times {print '-'}
puts "\nPets array to remove the cat:"

pets = ["hamster", "guinea pig", "cat","dog"]
pets.delete_if{|animal| animal=="cat"} #array: remove the cat
puts "Pets array with cat removed: #{pets}"
pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}
pets.delete_if{|animal,name| animal=="guinea pig"} #hash: remove the guinea pig
puts "\nPets hash with guinea pig removed: #{pets}"


puts "\nRelease 2: filters a data structure for only items that DO satisfy a certain condition"
10.times {print '-'}
puts "\nPets array: Find the dog"
pets = ["hamster", "guinea pig", "cat","dog"]
puts pets.select{|animal| animal=="dog"} #=> dog

puts "\nHash Array: Find the cat"
pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}
puts pets.select {|animal,name| animal=="cat"} #=>{"cat"=>"Pumpkin"}

puts "\nRelease 2: filters a data structure for ONLY items satisfying a certain condition"
10.times {print '-'}
puts "\nArray: keep the dog"
pets = ["hamster", "guinea pig", "cat","dog"]
puts pets.keep_if{|animal| animal=="dog"} #=> dog

puts "Pets hash: keep the cat"
pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}
puts pets.keep_if{|animal,name| animal=="cat"} #=>{"cat"=>"Pumpkin"}

puts "Release 2: remove items from a data structure until the condition of the block evaluates false"
10.times {print '-'}
puts "\nArray: drop animals that are not dogs"
pets = ["hamster", "guinea pig", "cat","dog"]
puts pets.drop_while {|animal| animal != "dog"} #=> dog

10.times {print '-'}
puts "\nHash: reject animals that contain more than 3 letters"

hash
pets = {
	"hamster"=>"Cocoa", 
	"guinea pig"=>"S'more", 
	"cat"=>"Pumpkin",
	"dog"=>"Muffin"
}
puts pets.reject { |animal,name| animal.length>3 }
