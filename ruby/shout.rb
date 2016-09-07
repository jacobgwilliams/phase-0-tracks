module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "OH MY " + words.upcase + " This is the happiest day of my life!"
  end
end

p Shout.yell_angrily("damn it")
p Shout.yelling_happily("cupcake sauce")