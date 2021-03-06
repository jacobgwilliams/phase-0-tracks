# Virus Predictor - Jacob Williams

# I worked on this challenge Jules Martin.
# We spent [3] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative can call on a file locally without a full path, since it's in the same directory
# However, require_relative is only used for external files and data, and can't be used for requiring Ruby gems and the like. That requires... require.
#require "pry"

require_relative 'state_data'

class VirusPredictor

 #creates an instance of the VirusPredictor class and defines the 3 attributes (state,
 #poulation and population density)
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

 #calls the two methods below
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

private

 #returns the number of deaths according to the population density
 def predicted_deaths
   # predicted deaths is solely based on population density
  if @population_density < 50
    number_of_deaths = (@population * 0.05).floor
  elsif @population_density > 200
    number_of_deaths = (@population * 0.4).floor
  else
    number_of_deaths = (@population * ((@population_density/50).round * 0.1)).floor
  end
   # BELOW CODE HAS BEEN ATTEMPTED TO BE REFACTORED ABOVE
   # if @population_density >= 200
   #   number_of_deaths = (@population * 0.4).floor
   # elsif @population_density >= 150
   #   number_of_deaths = (@population * 0.3).floor
   # elsif @population_density >= 100
   #   number_of_deaths = (@population * 0.2).floor
   # elsif @population_density >= 50
   #   number_of_deaths = (@population * 0.1).floor
   # else
   #   number_of_deaths = (@population * 0.05).floor
   # end
   print "#{@state} will lose #{number_of_deaths} people in this outbreak"
 end

 #returns the speed of virus spread also based on population density
 def speed_of_spread #in months
   # We are still perfecting our formula here. The speed is also affected
   # by additional factors we haven't added into this functionality.
   speed = 0.0

   if @population_density >= 200
     speed += 0.5
   elsif @population_density >= 150
     speed += 1
   elsif @population_density >= 100
     speed += 1.5
   elsif @population_density >= 50
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

STATE_DATA.each do |state, data|
#binding.pry
current_state = VirusPredictor.new("#{state}", STATE_DATA["#{state}"][:population_density], STATE_DATA["#{state}"][:population])
current_state.virus_effects
end

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# One uses hash rockets with strings for keys, the other uses symbols with the colon initializer.
# What does require_relative do? How is it different from require?
# require_relative requires from a file based on the current location of the asking file. require is different, because it needs a full path to a required file, but also require is the only command that can require Ruby gems.
# What are some ways to iterate through a hash?
# We used .each with parameters for keys and hashes.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Due to "over-writing" or "over-coding," it wouldn't have occurred to me not to pass those instance variables into those methods. Because they are instance variables and are available anywhere in the Class, you don't even need to pass them in.
# What concept did you most solidify in this challenge?
# I think scope was a little more solidified on this challenge, as well as the idea of refactoring. I always err on the side of writing longer if/else chains, and I think it's important to always consider ways using arithmatic to shorten those cases.