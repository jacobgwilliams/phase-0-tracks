class Santa

  attr_reader :reindeer_ranking
  attr_accessor :gender, :ethnicity, :age

  def initialize(gender = "", ethnicity = "")
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  #SETTERS
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at=(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking << reindeer
  end
end

# santa = Santa.new("male", "white")
# santa.speak
# santa.eat_milk_and_cookies("Oreo")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end

# santa = Santa.new("white", "male")
# p santa.age
# santa.celebrate_birthday
# p santa.age

# p santa.reindeer_ranking
# santa.get_mad_at=("Rudolph")
# p santa.reindeer_ranking

# p santa.gender
# santa.gender="female"
# p santa.gender

### RELEASE 4: BUILD MANY MANY SANTAS ###

# Algorithm:
# Use the array of genders provided, plus an array of example ethniticies and create the Santas randomly with those attributes.
# NOTE: Use documentation to find Array method to chose a random trait
# Santa's age should be random number between 0 - 140
# Print out the attributes of each Santa

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
500.times do |santa|
  santa = Santa.new
  santa.age = rand(140)
  santa.gender = example_genders.sample
  santa.ethnicity = example_ethnicities.sample
  santas << santa
end
counter = 1
puts "Here are the Santas!:"
santas.each do |santa|
  puts "Santa Number #{counter}:"
  puts "Gender: #{santa.gender}, Ethnicity: #{santa.ethnicity}, Age: #{santa.age}"
  counter += 1
end