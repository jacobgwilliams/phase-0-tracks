# 6.6 Word Guesser
# Jacob Williams

# make a class for a word guessing game
# one user can enter a word or phrase
# For driver code, just input a default word
# Another user attempts to guess the word
# guesses should be limited (should depend on the length of the word)
# break down word
# Repeated guesses don't count
# (store guesses)
# (check guesses)
# Guessing player recieves continual feedback ("_ _ _ _ _ _", if user guesses a correct letter, show it: "_ _ _ c _ _")
# Congratulate user if they win, taunt them if they lose

class WordGuess
  attr_reader :guess, :answer

  def initialize(guess, answer)
    @guess = guess
    @answer = answer
    @hint = ''
    @attempts = answer.length
  end

  def max_tries
    puts "You have #{@attempts} attempts left."
    @attempts
  end

  def initial_hint
    answer.length.times do |underscore|
      @hint += "_ "
    end
    @hint.strip!
  end

  def progress

  end

  def word_checker
    answer_array = @answer.split
  end
end