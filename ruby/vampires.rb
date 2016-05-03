#Vampire Detection program
#Get applicant name for screening agains WIB
#Get applicant age and year of birth
# Offer candidate garlic bread
# Offer enrollment in health insurance plan

puts "How many new employees are being processed?"
employees = gets.chomp.to_i


until employees == 0
	employees -= 1


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

	secret_name = "Drake Cula" 
	secret_name2 = "Tu Fang"


	if

		name == secret_name || name == secret_name2
		puts "Definitely a vampire!"

	elsif
	  	age == current_year - birth_year && (lunch == "yes" || health_plan == "yes")

		puts "Candidate is probably NOT a vampire"


#If Employee age != birth year calculation, && hates garlic bread  || does not want insurance
#Printed result:  Probable VAMPIRE

	elsif
		age != current_year - birth_year && (lunch == "no" && health_plan == "no")
		puts "Candidate is almost certainly a vampire"


	elsif
		age != current_year - birth_year && (lunch == "no" || health_plan == "no" )
		puts "Candidate is probably a vampire"


#If Employee age != birth year calculation, && hates garlic bread && does not want insurance
#Printed result:  Almost certainly VAMPIRE
	

	else
		puts "Results Inconclusive"
	end
# allergy filter != “sunshine,” continue the loop for as long as is needed. 
# if allery == "sunshine" then “Probably a vampire.”
 	while true
 		puts "Please tell us any allergies, one at a time.  When you have no allergies 
 		to list, type:'none'"
 		
 		allergy = gets.chomp

 		if allergy == "none"
 			break 

 		elsif allergy == "sunshine"
 				puts "Probably a vampire"
 			break	
 	end 
 end

 	puts "Actually, never mind! What do these questions have to do with anything? 
 	Let's all be friends."
 
	end
#
#Elsif employee puts DRAKE CULA or TU FANG 
#Printed result is: Definitely a vampire 
#
#Else result : Inconclusive

#END program and puts Results inconclusive
#
#
#
