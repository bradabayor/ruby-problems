require_relative "bin/game.rb"

module Hangman

game = Game.new
game.load_answers
game.get_answer

end

