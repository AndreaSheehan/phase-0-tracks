
#module Shout
	
#	def self.yell_angrily(words)
#	words + "!!!" + ": ( "
#	end

#	def self.yell_happily(words= "Woohoo!!!")
#		words + "happy day!"
#	end

#end

#Shout.yell_happily
#Shout.yell_angrily("criminy")

module Shout

	def yell_angrily(words)
		words + "!!!" + ":("
	end

	def yell_happily(words="Woohooo!!!")
		words + "Happy Day!"
		
	end
end

	class Child
		
		include Shout
	end

	class Player
		
		include Shout
	end



#child = Child.new
#child.yell_happily
#child.yell_angrily("That's not fair!")

#player = Player.new
#player.yell_happily("We won!!!")
#player.yell_angrily("Are you blind?!")

