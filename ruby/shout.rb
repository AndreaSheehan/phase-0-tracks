module Shout
	
	def self.yell_angrily(words)
	words + "!!!" + ": ( "
	end

	def self.yell_happily(words= "Woohoo!!!")
		words + "happy day!"
	end

end

Shout.yell_happily
Shout.yell_angrily("criminy")

