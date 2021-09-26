class Hangman
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
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
    puts "Enter a letter"
    guess = gets.chomp
    # if letter is not part of the word then remove from he letters array
    good_guess = @word.first.include? guess

    if good_guess
      puts "Good guess!"
    else
      puts "Sorry... try again"
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