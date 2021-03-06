require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("banana") }

  it "stores answer as array on initialization" do
    expect(game.answer).to eq ['b','a','n','a','n','a']
  end

  it "limits guesses based on length of word" do
    expect(game.guess_count).to eq 6
  end

  it "counts down guess count with every guess" do
    expect(game.guess_timer).to eq 5
  end

  it "shows a hint of underscores and guessed letters" do
    expect(game.hint).to eq "_ _ _ _ _ _"
  end

  it "reveals progress per letter in hint" do
    game.correct_guesses = ['a']
    expect(game.hint).to eq "_ a _ a _ a"
  end

  it "itializes correct guesses array" do
    expect(game.correct_guesses).to eq []
  end

  it "stores correct guesses in correct array" do
    expect(game.guess_store('b')).to eq ['b']
  end

  it "stores incorrect guesses in inccorrect array" do
    expect(game.guess_store('z')).to eq ['z']
  end

  it "does not count repeat guesses" do
    game.all_guesses = ['b']
    expect(game.no_repeat('b')).to eq "You already guessed that!"
  end

  # ENDED UP hard coding this in driver code
  # it "checks for victory" do
  #   expect(game.win_check).to eq TRUE
  # end

  it "provides a congrats message on winning" do
    expect(game.victory).to eq TRUE
  end

  it "provides a taunt if user loses" do
    expect(game.lose).to eq TRUE
  end
end

# NOTES:
# does not count repeat guesses:
# has a guess counter that keeps track
# stores an array of guessed letters
# checks letter array for repeat values

########################

# describe WordGuess do
#   let(:game) { WordGuess.new("banana", "banana") }

#   it "stores user guess on initialization" do
#     expect(game.guess).to eq "banana"
#   end

#   it "stores answer on initialization" do
#     expect(game.answer).to eq "banana"
#   end

#   it "bases max number of tries on length of word" do
#     expect(game.max_tries).to eq 6
#   end

#   it "shows hint as underscores for letters" do
#     expect(game.initial_hint).to eq "_ _ _ _ _ _"
#   end

#   it "replaces underscores with correct letters when guessed" do
#     expect(game.progress).to eq ""
#   end
# end