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
	attr_accessor :age, :eye_color, :name
	attr_reader :pets, :phrase


	def initialize(name)
		puts "initializing child instance"
		@name = name
		@eye_color = eye_color
		@age = 0
		@birth_order = ["Asia", "Jaz", "Dash", "Jett"]
		@temperament = "easygoing, loving, respectful, and considerate"
	end

	def feed_pets(animal)
		puts "Mommy, I fed the #{animal}"
	
	end

	def speak(phrase = "You are the best mommy!")
		puts "#{phrase}"

	end

	def hug_and_kiss

		10.times {puts "Mwah!xoxoxo"}		

		end
	end


child = Child.new("Asia")
p child
child.speak
child.speak("I love you so much!")
child.feed_pets("dog")
child.hug_and_kiss


