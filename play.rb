class Hangman
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
    @lives = 7
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
  def print_teaser
    word_teaser = ""
    @word.first.size.times do
      word_teaser += "_ "
    end
    puts word_teaser
  end
  def make_guess
    if @lives > 0
    puts "Enter a letter"
    guess = gets.chomp
    # if letter is not part of the word then remove from he letters array
    good_guess = @word.first.include? guess

    if good_guess
      puts "Good guess!"
    else
      @lives -= 1
      puts "Sorry... you have #{@lives} lives left - try again"
      make_guess
    end
    else
      puts "Game Over!"
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