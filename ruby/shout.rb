# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "OH MY " + words.upcase + " This is the happiest day of my life!"
#   end
# end

# p Shout.yell_angrily("damn it")
# p Shout.yelling_happily("cupcake sauce")

### RELEASE 3 ###

module Shout
  def yell_angrily(name)
    name + " GET OFF MY LAWN!!!"
  end

  def yelling_happily(gameshow)
    "OH BOY, " + gameshow.upcase + " IS ON!"
  end
end

class Grandma
  include Shout
end

class Grandpa
  include Shout
end

# DRIVER CODE

eustace = Grandpa.new
p eustace.yell_angrily("Allen")

janice = Grandma.new
p janice.yelling_happily("Wheel of Fortune")