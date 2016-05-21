class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance"
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", 
			"Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0

	end

	def speak(n)
		puts "Ho, ho, ho! Haaaappy holidays!"

	end


	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"


	end

end




santas = []
facebook_gender_list = [
	"Agender", "Androgyne", "Androgynous", "Bigender", "Cis", "Cis Female","Cis Male", "Cis Man", "Cis Woman", "Cisgender", "Cisgender Female", "Cisgender Male", "Cisgender Man", "Cisgender Woman", "Female to Male", "FTM", "Gender Fluid", "Gender Nonconforming", "Gender Questioning", "Gender #Variant", "Genderqueer", "Intersex", "Male to Female", "MTF", "Neither", "Neutrois", "Non#-binary", "Other", "Pangender", "Trans","Trans Female", "Trans Male", "Trans Man", "Trans Person", "Trans Woman", "Trans*", "Trans* Female","Trans* Male", "Trans* Man", "Trans* Person", "Trans* Woman", "Transfeminine", "Transgender","Transgender Female", "Transgender Male", "Transgender Man", "Transgender Person", "Transgender Woman", "Transmasculine", "Transsexual", "Transsexual Female", "Transsexual Male", "Transsexual Man", "Transsexual Person", "Transsexual Woman", "Two-spirit"
	]
   
ethnicity_list = [
	"Pashtun","Tajik","Arab","Hazara","Uzbek","Guar","Albanian","Greek","Asian","Andorran","Spanish","Portuguese", "Black","White","Hispanic","Armenian","Dutch","Colombian","Australian", "Bahraini","Bengali","Belarusian","Russian", "Ngalop","Mestizo","Bosni", "Malay","Chinese","Turkish", "Burman","Shan","Creole","Vietnamese","Croat","Egyptian", "Fang", "Estonian", "Scandinavian","Georgian","Finn","German","Amhara","Somali","Akan","Cafra","Makoa", "Zing","Karen","Tswana", "Undeclared"
	]   
   
 
  facebook_gender_list.length.times do |i|
  	santas << Santa.new(facebook_gender_list[i], ethnicity_list[i])
  end


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