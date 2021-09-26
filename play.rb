class Hangman
  def initialize
    @letters = ('a'..'z').to_a
    @word = words.sample
  end
  def words
    [
      ["cricket", "A game played by gentlemen"],
      ["jogging", "We are not walking"],
      ["celebrate", "Re mebering special moments"],
      ["continent", "There are 7 land masses called this"],
      ["exotic", "Not from around here"]
    ]
  end
  def begin
    # ask user for a letter
    puts "New game started... your clue is #{@word.first}"
    guess = gets.chomp
      puts "You guessed #{guess}"
  end
end
game = Hangman.new
game.begin