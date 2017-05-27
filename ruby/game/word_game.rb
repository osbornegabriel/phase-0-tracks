class Word_game
  attr_reader :answer, :guess_limit
  attr_accessor :guess

  def initialize(answer = "")
    @answer = answer.downcase
    @guess = "_ " * @answer.length
    if answer.length < 4
      @guess_limit = 6
    elsif answer.length > 6
      @guess_limit = 10
    else
      @guess_limit = 8
    end
  end

  def answer_comparison(letter)
    @answer.length.times do
      index_counter = 0
      if @answer[index_counter] == letter
        @guess[index_counter*2] = letter
      end
      index_counter += 1
    end
  end


  def player_guess
    until @guess_limit == 0 || @guess == @answer
      letter_guess = ""
      p @guess
      while letter_guess.length != 1
        puts "What letter do you wish to guess?(Provide a single letter)"
        letter_guess = gets.chomp.downcase
      end
      answer_comparison(letter_guess)
      @guess_limit -= 1
    end

    if @guess == @answer
      puts "Great job!!! You guessed that the word is #{@answer}!"
    elsif @guess_limit == 0
      puts "Wow, you really suck at this. You couldn't guess the word if you had 26 guesses. Go sit in the corner and think about what you've done!"
    end
  end

  def new_answer(answer)
    @answer = answer.downcase
    @guess = "_ " * @answer.length
    if answer.length < 4
      @guess_limit = 6
    elsif answer.length > 6
      @guess_limit = 10
    else
      @guess_limit = 8
    end
  end
end
