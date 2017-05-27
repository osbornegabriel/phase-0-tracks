require_relative 'Word_game'

describe Word_game do
  let(:word_game) {Word_game.new}

  it "answer" do
    expect(word_game.answer).to eq ""
  end

  it "guess" do
    expect(word_game.answer).to eq "_ "

  it "guess_count" do
    expect(word_game.answer).to eq 6



end