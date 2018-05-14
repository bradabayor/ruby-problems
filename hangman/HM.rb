require_relative "bin/game.rb"
require_relative "bin/messages.rb"

module Hangman

game = Game.new
game.initial_render

# Initialize Game Loop
turn = 8
until turn == -1 do
  game.play_round
  break if game.check_win?
  Messages.turn_counter(turn)
  turn -= 1
end

end

