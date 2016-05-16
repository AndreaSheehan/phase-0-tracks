class Puppy

  def fetch(toy="ball o monkeys")
    	puts "I brought back the #{toy}!"
    toy
  end
  

end

chloe = Puppy.new
chloe.fetch("doll")

class Puppy
	def speak(n)
		n.times { puts "woof"}
 	end
end


class Puppy
	def roll_over
		 puts "*rolls over*"
 	end
end
	
chloe.speak(3)

chloe.roll_over


class Puppy
	def dog_years(n)
	dog_age = n * 7
	end	
end

chloe.dog_years(4)

class Puppy
	def cold_night(temp)
		if temp < 32
			puts "*cuddle cuddle*"
		else puts "*pant pant*"
		end
	end
end
chloe.cold_night(50)


