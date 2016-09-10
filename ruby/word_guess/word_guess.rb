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
  attr_reader :answer, :guess_count, :guessed_letters. :you_win
  def initialize(answer)
    @answer = answer.split('')
    @guess_count = answer.length
    @hint = ''
    @guessed_letters = []
    @you_win = FALSE
  end

  def guess_store(letter)
    @guessed_letters << letter
  end

  def guess_timer
    @guess_count -= 1
  end

  def no_repeat(letter)
    @guessed_letters.each do |guessed_let|
      if letter == guessed_let
        @guess_count += 1
      end
    end
    p "You already guessed that!"
  end

  def victory
    p "You win! The word was #{@answer.join}!"
    @you_win = TRUE
  end

  def lose
    p "You lose! Try again!"
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

# DRIVER CODE

puts "Welcome to Word Guesser! It's a fun game!"
puts "This is for two players. Player 1 enters a word, and Player 2 tries to guess the word!"
puts "Player 1, what word would you like Player 2 to guess?"

game = WordGuess.new('banana')

# while !game.you_win
  puts "Player 2, you have #{game.guess_count} guesses. What letter would you like to guess?"
  puts game.hint(game.answer)

# end



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