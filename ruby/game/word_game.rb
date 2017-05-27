class Word_game
  attr_reader: :answer :answer_array :guess_limit
  attr_accessor: :guess

  def initialize(answer)
    @answer = answer
    @answer_array = answer.split(//)
    @guess = answer.length.times {|i| "_" * i}
    end
    if answer.length < 4
      @guess_limit = 6
    elsif answer.length > 6
      @guess_limit = 10
    else
      @guess_limit = 8
    end
  end


end
