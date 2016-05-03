#Vampire Detection program
#Get applicant name for screening agains WIB
#Get applicant age and year of birth
# Offer candidate garlic bread
# Offer enrollment in health insurance plan

puts "Welcome! What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "Please enter your year of birth?"
birth_year = gets.chomp.to_i

puts "Today's lunch special is garlic bread.  Shall we order some for you? (yes/no)"
lunch = gets.chomp

puts "Enrollment in our health plan is optional.  Shall we enroll you? (yes/no)"
health_plan = gets.chomp

current_year = 2016.to_i\
#RESULTS:
#If employee age == calculation of age from birth year && they order garlic bread || sign up for insurance.
#Printed result: NOT a vampire

if 
	 name = "Drake Cula" 
		puts "Definitely a vampire!"

	elsif name = "Tu Fang"
		puts "Definitely a vampire!"

	elsif age == current_year - birth_year && lunch == "yes" || health_plan == "yes"

	puts "Candidate is probably NOT a vampire"


#If Employee age != birth year calculation, && hates garlic bread && does not want insurance
#Printed result:  Almost certainly VAMPIRE

	elsif
		age != current_year - birth_year && lunch == "no" && health_plan == "no"
		puts "Candidate is almost certainly a vampire"


#If Employee age != birth year calculation, && hates garlic bread  || does not want insurance
#Printed result:  Probable VAMPIRE
	elsif
		age != current_year - birth_year && (lunch == "no" || health_plan == "yes")
		puts "Candidate is probably a vampire"

	elsif 
		age != current_year - birth_year && (lunch == "yes" || health_plan == "no")
		puts "Candidate is probably a vampire"



	#else
		#puts "Resuls Inconclusive"

	
#
#Elsif employee puts DRAKE CULA or TU FANG 
#Printed result is: Definitely a vampire 
#
#Else result : Inconclusive
end
#END program and puts Results inconclusive
#
#
#
