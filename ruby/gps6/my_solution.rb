# Virus Predictor

# I worked on this challenge [by myself,  ].
# We spent [did not track] hours on this challenge.

# EXPLANATION OF require_relative
#
#require_relative: 
#Require relative is used when you need access to code from a related file.
# The reason it is require RELATIVE:is that it specifies a path relative 
# to your current position to locate the file.
# 
#
#require:
#require is used when you need to access a file from a general "library" and not in your current
#working directory.
#of files and it is not something created specifically as relative to your current codefile.
#
#
#
#
require_relative 'state_data'



class VirusPredictor

  attr_reader :state, :population_density, :population
#This  initialize method allows you to pass arguments 
#for the state_of_origin, population_density, 
#population) to a new object as you create it.
#@state
#@population
#@population density
#The above 3 are all instance variables which are denoted by the @ sign.
# So the initialize will take the arguments that are passed and "addign" them to 
# tthe instance variables. The instance variable are "initalized" by the passing in of the 
# arguments. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#This method calls the predicted_deaths and speed of spread methods.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

#private means the methods cannot be called with an explicit receiver. so the methods below are availabe
#to be called by the virus_effects method above but not on their own down in the driver code. 
 private

#the prediced_deaths method predicts the number of deaths at greater than or equal to a 
#density of 200, and than at each increment of 50 below that in the population density levels.
#Functionally it looks at the arguments passed and processes 
#the conditional statements according to the population density
#It cascades through the conditional statements until finding a match 
# It runs the code for that condition, multiplying the population by the given float. 
# .floor then uses that float, to find the largest integer less than or equal to the result. (Using the .floor method)
# Finally the predicted death statement is printed.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if    population_density >= 200
          rate = 0.4
    elsif population_density >= 150
          rate = 0.3
    elsif population_density >= 100
           rate =  0.2
    elsif population_density >= 50
          rate = 0.1
    else
          rate = 0.05
    end

    print "#{@state} will lose #{(population * rate).floor} people in this outbreak"

  end
  #The speed_of_spread method is set at a float of 0.0.  Then the method
  #evaluates the density argument (using the conditionals) to assign different increments 
  #for the speed of spreading the disease. It then prints a prediction .
  #

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if     population_density >= 200
      speed += 0.5
    elsif  population_density >= 150
      speed += 1
    elsif  population_density >= 100
      speed += 1.5
    elsif   population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 
 #Driver code belongs outside of the methods.  Thinking about separation of concerns
 #and good practice you would ideally keep your user interface, and report gneration and creation outside ofthe 
 #methods.
  #Create a report for all 50 states that pulls the same criteria as below. So we need
  #the state data has and to feed it he state  
  #parameters of new instance are (state_of_origin, population_density, population)
  #I modeled the solution the below and played with it until it worked but I still don't 
  #have a firm grasp on how to track the thinking on this hashy hash.  will bring it to office hours.
  STATE_DATA.each do |state, value|
  state = VirusPredictor.new(state, value[:population_density], value[:population])
  state.virus_effects
end


 # state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# 
# On your own, add a commented reflection section to yourmy_solution.rb file. Answer the following questions in your reflection:

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The STATE DATA hash assignment used a string and a rocket while the mested hash used a symbol.
# It made sense here because the code needed to make use of the State name as a string.
# 
# What does require_relative do? How is it different from require? Require_relative searche for the
# named file which will be found in the same directory relative to the one you are in. . Require will go looking across 
# a library of directories
# 
#
#What are some ways to iterate through a hash?
#You can use .each with a block and variations of .each such as
#.each_pair, .each_value, or .each_key   the latter two iterate through  to 
#return the value  and the key repsectively.
#
#
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# 
#We did not need to pass parameters because those are passed in upon initialization 
#and passed through to the instance variables which were then also asssigned and 
#made available to the methods. And if you make everything readable with the attr_reader method
#you don't NEED to use all the instance variables.
#
# What concept did you most solidify in this challenge?
# I did not fully understand scope and did not know about CONSTANT variables and 
# their syntax or scope.  I also liked getting practice with refactoring and seeing how
# the pieces work together.  I would actually really like some more like this.
# I am still shaky on that hashy hash.... 

# 
# 
# 
# 

