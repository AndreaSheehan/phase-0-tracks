class Santa
	attr_reader :ethnicity 
	attr_accessor :age, :reindeer_ranking, :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", 	"Vixen", "Comet","Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak(n)
		puts "Ho, ho, ho! Haaaappy holidays!"
	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"

	end

	def celebrate_birthday
	   @age +=1 
			puts "Santa is #{age} years old today."
	end
	
#method.  use index to move the bad reindeer to last place-rotate? 
#select  reindeer name from list of 9 Santa is mad at.
#move that reindeer from its current index to the last place index(8).  

	def get_mad_at
		
		puts "Is Santa mad at:Rudolph,Dasher,Dancer, Prancer, 	Vixen, Comet, Cupid, Donner, or Blitzen?"
		victim = gets.chomp.to_s.capitalize
		@reindeer_ranking << @reindeer_ranking.delete(victim)
	end
		
end

#find victim in array and reassign his spot
	
		
#	@reindeer_ranking.sample.1.time do [n]	
#		puts "Santa is very mad at {@reindeer_ranking
#.sample[n]}"
#	end
		


santas = []
facebook_gender_list = [
	"Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cis Female","Cis Male", "Cis Man", "Cis Woman", "Cisgender", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender #Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non#-binary", "Other", "Pangender", "Trans","Trans Female", "Trans Male", "Trans Man", "Trans Person", "Trans Woman", "Trans*", "Trans* Female","Trans* Male", "Trans* Man", "Trans* Person", "Trans* Woman", "Transfeminine", "Transgender","Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-spirit"
	]
   
ethnicity_list = [
	"Pashtun","Tajik","Arab","Hazara","Uzbek","Guar","Albanian","Greek","Asian","Andorran","Spanish","Portuguese", "Black","White","Hispanic","Armenian","Dutch","Colombian","Australian", "Bahraini","Bengali","Belarusian","Russian", "Ngalop","Mestizo","Bosni", "Malay","Chinese","Turkish", "Burman","Shan","Creole","Vietnamese","Croat","Egyptian", "Fang", "Estonian", "Scandinavian","Georgian","Finn","German","Amhara","Somali","Akan","Cafra","Makoa", "Zing","Karen","Tswana", "Undeclared"
	]   
 
  
 facebook_gender_list.length.times do
 	santa = Santa.new(facebook_gender_list.sample, ethnicity_list.sample)
 	santa.age = rand(141)
 	santas << santa
end

p santas

#santa.celebrate_birthday

 	
 	
# facebook_gender_list.length.times do |i|
#  	santas << Santa.new(facebook_gender_list[i], #ethnicity_list[i])
#  end

#santa = Santa.new(facebook_gender_list.sample, ethnicity_list.sample)
#santa.celebrate_birthday

#santa.celebrate_birthday

 	
 	
# facebook_gender_list.length.times do |i|
#  	santas << Santa.new(facebook_gender_list[i], #ethnicity_list[i])
#  end

#santa = Santa.new(facebook_gender_list.sample, ethnicity_list.sample)
#santa.celebrate_birthday

#find victim in array and reassign his spot
	
		
#	@reindeer_ranking.sample.1.time do [n]	
#		puts "Santa is very mad at {@reindeer_ranking
#.sample[n]}"
#	end
		


santas = []
facebook_gender_list = [
	"Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cis Female","Cis Male", "Cis Man", "Cis Woman", "Cisgender", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender #Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non#-binary", "Other", "Pangender", "Trans","Trans Female", "Trans Male", "Trans Man", "Trans Person", "Trans Woman", "Trans*", "Trans* Female","Trans* Male", "Trans* Man", "Trans* Person", "Trans* Woman", "Transfeminine", "Transgender","Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-spirit"
	]
   
ethnicity_list = [
	"Pashtun","Tajik","Arab","Hazara","Uzbek","Guar","Albanian","Greek","Asian","Andorran","Spanish","Portuguese", "Black","White","Hispanic","Armenian","Dutch","Colombian","Australian", "Bahraini","Bengali","Belarusian","Russian", "Ngalop","Mestizo","Bosni", "Malay","Chinese","Turkish", "Burman","Shan","Creole","Vietnamese","Croat","Egyptian", "Fang", "Estonian", "Scandinavian","Georgian","Finn","German","Amhara","Somali","Akan","Cafra","Makoa", "Zing","Karen","Tswana", "Undeclared"
	]   
 
  
 3.times do
 	santa = Santa.new(facebook_gender_list.sample, ethnicity_list.sample)
 	santas << santa
end

p santas

#santa.celebrate_birthday

 	
 	
# facebook_gender_list.length.times do |i|
#  	santas << Santa.new(facebook_gender_list[i], #ethnicity_list[i])
#  end

#santa = Santa.new(facebook_gender_list.sample, ethnicity_list.sample)
#santa.celebrate_birthday



# add celebrate birthday to change Santa age by 1 year
# get_mad_at(reindeer_name) andmove him to last place in the ranking(>rotate?)
# @gender allows to be reassigned from outside the class
# 
# getter methods:  age returns @age
# ethnicity returns@ ethnicity.

#Update your Santa class with the following attributes:

#gender, which will be a string passed in on initialization
#ethnicity, which will be a string passed in on initialization
#reindeer_ranking, an array of reindeer from most preferred to least preferred. This is not passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
#age, which is not passed in on initialization and defaults to 0
#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")