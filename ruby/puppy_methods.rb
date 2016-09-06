class Puppy
  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(count)
    count.times{p "Woof!"}
  end

  def roll_over
    puts "**rolls over**"
  end

  def dog_years(human_years)
    p "#{human_years*7}"
  end

  def play_dead
    puts "**dies**"
  end

end

puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(4)
puppy.roll_over
puppy.dog_years(5)
puppy.play_dead