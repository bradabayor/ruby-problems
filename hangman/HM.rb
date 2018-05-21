require_relative "bin/game.rb"
require_relative "bin/messages.rb"

module Hangman

game = Game.new
game.select_answer
game.initial_render

# Initialize Game Loop
turn = 8
until turn == -1 do

  # Ask for option or letter
  response = Messages.get_response

  if response == "save"
    game.save_json(turn)
  elsif response == 'load'
    game.load_json
    game.play_round(response)
  end

  # End if game is won
  break if game.check_win?

  # Display post-turn status
  Messages.display_status(game.guessed, turn)

  # Turn counter incremented
  turn -= 1
end

end

