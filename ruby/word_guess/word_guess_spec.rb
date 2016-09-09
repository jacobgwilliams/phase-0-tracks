require_relative 'word_guess'

describe WordGuess do
  let(:game) { WordGuess.new("banana", "banana") }

  it "stores user guess on initialization" do
    expect(game.guess).to eq "banana"
  end

  it "stores answer on initialization" do
    expect(game.answer).to eq "banana"
  end

  it "bases max number of tries on length of word" do
    expect(game.max_tries).to eq 6
  end

  it "shows hint as underscores for letters" do
    expect(game.initial_hint).to eq "_ _ _ _ _ _"
  end

  it "replaces underscores with correct letters when guessed" do
    expect(game.progress).to eq ""

end