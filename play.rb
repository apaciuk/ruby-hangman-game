class Hangman
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
    @lives = 7
    @correct_guesses = []
    @word_teaser = ""
    @word.first.size.times do
      word_teaser += "_ "
    end
  end
  def words
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking"],
      ["celebrate", "Remembering special moments"],
      ["continent", "There are 7 land masses called this"],
      ["exotic", "Not from around here"]
    ]
  end
  def print_teaser last_guess = nil
    update_teaser unless last_guess.nil?
    puts word_teaser
  end
  def update_teaser
    new_teaser = @word_teaser.
      new_teaser.each_with_index do |letter, index|
      # replace blank values with guessed letter if matches letter in word
      if letter == '_'
    end
    end
    end
  def make_guess
    if @lives > 0
    puts "Enter a letter"
    guess = gets.chomp
    # if letter is not part of the word then remove from he letters array
    good_guess = @word.first.include? guess

    if good_guess
      puts "You are correct!"
      @correct_guesses << guess
      # remove correct guess from alphabet
      @letters.delete guess
      print_teaser guess
      make_guess
    else
      @lives -= 1
      puts "Sorry... you have #{@lives} lives left - try again"
      make_guess
    end
    else
      puts "Game Over - better luck next time!"
    end
    end
  def begin
    # ask user for a letter
    puts "New game started... your word is #{@word.first.size} letters long"
    print_teaser
    puts "Clue is: #{@word.last}"
    make_guess
  end
end
game = Hangman.new
game.begin