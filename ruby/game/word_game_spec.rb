require_relative 'word_game'

describe Word_game do
  let(:word_game) {Word_game.new("Jazz")}

  it "answer" do
    expect(word_game.answer).to eq "jazz"
  end

  it "guess" do
    expect(word_game.guess).to eq "_ _ _ _ "
  end

  it "guess_limit" do
    expect(word_game.guess_limit).to eq 8
  end
end