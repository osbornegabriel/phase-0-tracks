require_relative 'word_game'

describe Word_game do
  let(:word_game) {Word_game.new}

  it "answer" do
    expect(word_game.answer).to eq ""
  end

  it "guess" do
    expect(word_game.guess).to eq ""
  end

  it "guess_limit" do
    expect(word_game.guess_limit).to eq 6
  end



end