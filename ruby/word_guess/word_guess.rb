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
  attr_accessor :answer, :guess_count, :correct_guesses, :all_guesses, :you_win, :you_lose, :hint
  def initialize(answer)
    @answer = answer.split('')
    @guess_count = answer.length
    @hint = ''
    @correct_guesses = []
    @all_guesses = []
    @you_win = FALSE
    @you_lose = FALSE
  end

  def guess_store(letter)
    if answer.include?(letter)
      @correct_guesses << letter
      @all_guesses << letter
    else
      @all_guesses << letter
    end
  end

  def guess_timer
    @guess_count -= 1
  end

  def no_repeat(letter)
    if @all_guesses.include?(letter)
      @guess_count += 1
      p "You already guessed that!"
    end
  end

  def victory
    p "You win! The word was #{@answer.join}!"
    @you_win = TRUE
  end

  def lose
    p "How did you lose!? There's only 26 letters in the alphabet!"
    @you_lose = TRUE
  end

  def hint
    @hint = ''
      @answer.each do |letter|
        if correct_guesses.include?(letter)
          @hint += "#{letter} "
        else
          @hint += "_ "
        end
      end
    @hint.strip!
  end

  # THIS BLOCK wasn't able to get up and running. I don't know why, I tested it repeatedly. Would love feedback from anyone who managed to create a method that worked for checking for victory. Wound up hard coding it in driver code.
  # def win_check
  #   if @hint.gsub(/\s+/, "") == @answer.join
  #     "You win! The word was #{@answer.join}!"
  #     @you_win = TRUE
  #   else
  #     @you_win = FALSE
  #   end
  # end
end

# DRIVER CODE

puts "Welcome to Word Guesser! It's a fun game!"
puts "This is for two players. Player 1 enters a word, and Player 2 tries to guess the word!"
puts "Player 1, what word would you like Player 2 to guess?"

game = WordGuess.new('banana')
guess = ''
while @you_win != TRUE && guess != "quit" && @you_lose != TRUE
  puts "Player 2, you have #{game.guess_count} guesses. What letter would you like to guess?"
  puts game.hint
  guess = gets.chomp
  game.no_repeat(guess)
  game.guess_store(guess)
  game.guess_timer
  # game.win_check
  if game.hint.gsub(/\s+/, "") == game.answer.join
    p "You win! The word was #{game.answer.join}!"
    @you_win = TRUE
    break
  end
  if game.guess_count == 0
    game.lose
    break
  end
end