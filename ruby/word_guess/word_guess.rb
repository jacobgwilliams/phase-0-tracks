# 6.6 Word Guesser
# Jacob Williams

# PSEUDOCODE:
# One user can enter a word, another user attempts to guess the word
## Program greets user and asks for input
##
# Guesses are limited based on the length of the word
# Repeated guesses do not count against the user
# Guess player recieved continual feedback ("_ _ _ _ _ _")
# Congratulatory message if win, taunt if lose

class WordGuess
  attr_reader :answer, :guess_count, :guessed_letters
  def initialize(answer)
    @answer = answer.split('')
    @guess_count = answer.length
    @hint = ''
    @guessed_letters = []
  end

  def guess_store(letter)
    @guessed_letters << letter
  end

  def guess_timer
    @guess_count -= 1
  end

  def hint(letter)
    answer.map do |answer_let|
      if letter == answer_let
        @hint += "#{letter} "
      else
        @hint += "_ "
      end
    end
    @hint.strip!
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

#   def progress

#   end

#   def word_checker
#     answer_array = @answer.split
#   end
# end