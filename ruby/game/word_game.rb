class Word_game
  attr_reader :answer, :answer_array, :guess_limit
  attr_accessor :guess

  def initialize(answer)
    @answer = answer.downcase
    @answer_array = answer.split(//)
    @guess = answer.length.times {|i| "_ " * i}
    if answer.length < 4
      @guess_limit = 6
    elsif answer.length > 6
      @guess_limit = 10
    else
      @guess_limit = 8
    end
  end

  def answer_comparison(letter)
    @answer_array.length.times do
      index_counter = 0
      if @answer[index_counter] == letter
        @answer_array[index_counter] = letter
      end
      index_counter += 1
    end
  end


  def guess
    if guess != answer && guess_limit != 0
      letter_guess = ""
      while letter_guess.length != 1
      puts "What letter do you wish to guess?"
      letter_guess = gets.chomp.downcase
      end
      answer_comparison(letter_guess)
    end

    if @guess == @answer
      puts "Great job!!! You guessed that the word is #{@answer}!"
    elsif @guess != @answer && @guess_limit == 0
      puts "Wow, you really suck at this. You made #{@guess_limit} guesses and still couldn't solve this. Go sit in the corner and think about what you've done!"
    else
      puts "You're not there yet, keep guessing!"
    end
  end

end
