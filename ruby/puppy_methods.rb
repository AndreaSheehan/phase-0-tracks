class Puppy
	
	 def fetch(toy="ball o monkeys")
    	puts "I brought back the #{toy}!"
    	toy
  	end
  
	def speak(n)
		n.times { puts "woof"}
 	end


	def roll_over
		 puts "*rolls over*"
 	end


	def dog_years(n)
		dog_age = n * 7
	end	

	def cold_night(temp)
		if temp < 32
			puts "*cuddle cuddle*"
		else puts "*pant pant*"
		end
	end


	def initialize
		puts "Initializing new puppy instance"
	end	
end


chloe = Puppy.new

chloe.fetch("doll")
chloe.speak(3)
chloe.roll_over
chloe.dog_years(4)
chloe.cold_night(50)

# Ninja class
# characteristics
# clothes:[black, blue, red, green]
# invisibility: yes
# gender: [male, female]
# age: varied
# 
# Behaviors
# juggles
# flips
# throws_stars
# disappears
# saves_humankind
# 
class Ninja

	def initialize
		puts "Ninja initialized"
	end

	def juggles 
		puts "*items flip madly through air in succession*"
	end

	def saves_humankind
		puts "Hurray, Hurray! We are saved!"
	end
	
end
green_ninja = Ninja.new

little_ninjas = []
50.times {little_ninjas << Ninja.new}
little_ninjas.each do |ninja|
	ninja.juggles
	ninja.saves_humankind
end

<<<<<<< HEAD
# army_of_the_green_ninjas = Array.new(50) { Ninja.new }




=======
army_of_the_green_ninjas = Array.new(50) { Ninja.new }
#little_ninjas = []
# 50.times  {little_ninjas << Ninja.new }
 
army_of_the_green_ninjas.each { |ninja|
	p ninja.juggles
	p ninja.saves_humankind
}

#paired with soldiercoder.  Solution for loop:
#army_of_the_green_ninjas = Array.new(50) { Ninja.new }
#little_ninjas = []
# 50.times  {little_ninjas << Ninja.new }
>>>>>>> 9276b41bb2939f0fba9a20237d401f6b9cb73a4c
