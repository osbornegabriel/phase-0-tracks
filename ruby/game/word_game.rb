class Word_game
  def initialize(answer)
    @answer = answer
    if answer.length < 4
      @guess = 6
    elsif answer.length > 6
      @guess = 10
    else
      @guess = 8
    end
  end


end
