#begin 
#class Child
#must have at leat 3 attributes whose values will vary. Use 2 data types. 
# variable attributes:
# => hair_color
# => eye_color
# => age_
#=>  grade in school = age plus 5
#immutable attributes
# => temperament = "kind, respectful, and considerate"
# 	legs = 2
# 	ears = 2
# 	mouth = 1
# 	arms = 2
# 	tail = o
#
#Select 3 from possible behaviors
# => make bed
# => set table 
# => do homework
# => feed pets(animal)
# 			animals [dog, cat, guinea_pig, fish]
# => say (phrase) "I love you " and other phrases
# => hug_and_kiss
# => play(game)
# 	eat icecream(flavor)
# 	end

class Child
	attr_accessor :age, :eye_color, :name, :phrase, :pets
	attr_reader   :temperament 

	def initialize(name, age, eye_color)
		puts "initializing child instance"
		@name = name
		@eye_color = eye_color
		@age = age
		@pets = ["dog", "fish"]
		@temperament = "easygoing, loving, respectful, and considerate"
	end

	def feed_pets(pets)
		puts "Mommy, I fed the #{pets}"
	
	end

	def speak(phrase = "You are the best mommy!")
		puts "#{phrase}"

	end

	def hug_and_kiss

		10.times {puts "Mwah!xoxoxo"}		

	end
	
end

 puts "Welcome to Perfect Child mart!  What number of children would you like today? We will next ask you for details for the creation of each child."
 
number_of_children = gets.chomp.to_i
perfect_children = []
		
 number_of_children.times do
 	puts " Please name your child?"
	child_name = gets.chomp.to_s.capitalize
 	puts "How old would you like #{child_name} to be?"
 	child_age = gets.chomp.to_i
 	puts "What color eyes would you like #{child_name} to have?"
	child_eye_color = gets.chomp.to_s.downcase
			
	child = Child.new(child_name, child_age, child_eye_color)
	perfect_children << child
end

perfect_children.each do |child|
	puts "Name: #{child.name}"
	puts "Age: #{child.age}"
 	puts "Eye color: #{child.eye_color}"
 	puts "Pets: #{child.pets}"

 end

	
#perfect_children.each do |child|
#	child.hug_and_kiss
#	child.speak

#child = Child.new("Asia")
#p child
#child.speak
#child.speak("I love you so much!")
#child.feed_pet("dog)
#child.hug_and_kiss
#
#	Unexecuted idea to play with later:	
#	def grade(age)
#		@grade = (@age.to_i - 5)
#		if @grade < 0 
#			puts "You are too little. my sweet!"
#		elsif @grade == 0
#			puts "You are in kindergarten!"
#		else puts "you are in #{@grade}th grade! "
#		end
#	end	
	#	child.age = @age
		#	child.eye_color = @eye_color


