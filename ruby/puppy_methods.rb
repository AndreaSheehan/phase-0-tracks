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

