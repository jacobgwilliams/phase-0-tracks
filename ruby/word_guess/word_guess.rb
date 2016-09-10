# 6.6 Word Guesser
# Jacob Williams

# PSEUDOCODE:
# One user can enter a word, another user attempts to guess the word
# Guesses are limited based on the length of the word
# Repeated guesses do not count against the user
# Guess player recieved continual feedback ("_ _ _ _ _ _")
# Congratulatory message if win, taunt if lose

class WordGuess
  attr_reader :answer
  def initialize(answer)
    @answer = answer
  end
end

######################################

# class WordGuess
#   attr_reader :guess, :answer

#   def initialize(guess, answer)
#     @guess = guess
#     @answer = answer
#     @hint = ''
#     @attempts = answer.length
#   end

#   def max_tries
#     puts "You have #{@attempts} attempts left."
#     @attempts
#   end

#   def initial_hint
#     answer.length.times do |underscore|
#       @hint += "_ "
#     end
#     @hint.strip!
#   end

#   def progress

#   end

#   def word_checker
#     answer_array = @answer.split
#   end
# end