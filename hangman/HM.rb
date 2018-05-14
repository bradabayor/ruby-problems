require_relative "bin/game.rb"

module Hangman

game = Game.new
game.load_answers
game.get_answer

p game.answer

game.start_board
game.play_round

p game.locations

game.render_board

end

