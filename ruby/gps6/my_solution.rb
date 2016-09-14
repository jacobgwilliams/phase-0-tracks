# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Required files based on where they are currently
# Can't pull something else than files in the same directory
#require "pry"

require_relative 'state_data'

class VirusPredictor

 #creates an instance of the various predictors class and define the 3 attributes state,
 #poulation and population density
 def initialize(state_of_origin, population_density, population)
   @state = state_of_origin
   @population = population
   @population_density = population_density
 end

 #call the two methods below
 def virus_effects
   predicted_deaths
   speed_of_spread
 end

private

 #return the number of deaths according to the population density
 def predicted_deaths
   # predicted deaths is solely based on population density

   # number_of_deaths = (@population * (@population_density/500.0)).floor

   if @population_density >= 200
     number_of_deaths = (@population * 0.4).floor
   elsif @population_density >= 150
     number_of_deaths = (@population * 0.3).floor
   elsif @population_density >= 100
     number_of_deaths = (@population * 0.2).floor
   elsif @population_density >= 50
     number_of_deaths = (@population * 0.1).floor
   else
     number_of_deaths = (@population * 0.05).floor
   end

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