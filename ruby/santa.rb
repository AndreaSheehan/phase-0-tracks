class Santa

	def speak(n)
		puts "Ho, ho, ho! Haaaappy holidays!"

	end



	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"


	end


	def initialize
		puts "Initializing Santa instance"

	end
end

scott = Santa.new
scott.speak(1)
