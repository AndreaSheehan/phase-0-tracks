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

#RESULTS:
#If employee age == calculation of age from birth year && they order garlic bread || sign up for insurance.
#Printed result: NOT a vampire

current_year = 2016.to_i

if
	age != current_year - birth_year && lunch == "no" || health_plan == "yes"
	puts "Candidate is a vampire"
	
end
#
#If Employee age != birth year calculation, && hates garlic bread  || does not want insurance
#Printed result:  Probable VAMPIRE
#
##If Employee age != birth year calculation, && hates garlic bread  || does not want insurance
#Printed result:  Almost certainly VAMPIRE
#
#Elsif employee puts DRAKE CULA or TU FANG 
#Printed result is: Definitely a vampire 
#
#Else result : Inconclusive
#END program and puts Results inconclusive
