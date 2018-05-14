require_relative "bin/game.rb"

module Hangman

game = Game.new
game.load_answers
game.get_answer

p game.answer

game.render_board
game.play_round

p game.locations

end

