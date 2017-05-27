class Word_game
  attr_reader :answer
  attr_accessor :guess, :previous_guesses, :guess_limit

  def initialize(answer)
    @answer = answer.downcase
    @guess = "_ " * @answer.length
    if answer.length < 4
      @guess_limit = 6
    elsif answer.length > 6
      @guess_limit = 10
    else
      @guess_limit = 8
    end
    @previous_guesses = []
  end

  def answer_comparison(letter)
    @answer.length.times do |index_counter|
      if @answer[index_counter] == letter
        @guess[index_counter*2] = letter
      end
    end
    return @guess
  end


  def player_guess
    until @guess_limit == 0 || (@guess.delete " ") == @answer
      letter_guess = ""
      p @guess
      while letter_guess.length != 1
        puts "These are you guesses so far:"
        puts "#{previous_guesses}"
        puts "What letter do you wish to guess?(Provide a single letter)"
        letter_guess = gets.chomp.downcase
        while @previous_guesses.include?(letter_guess)
          puts "You've already used that letter. What letter do you wish to guess?"
          letter_guess = gets.chomp.downcase
        end
      end
      answer_comparison(letter_guess)
      @previous_guesses << letter_guess
      @guess_limit -= 1
    end

    if (@guess.delete " ") == @answer
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


# word = Word_game.new("")

# puts "What word would you like you're opponent to guess?"
# word_input = gets.chomp
# word.new_answer(word_input)
# word.player_guess