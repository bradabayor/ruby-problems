# Include relevant module
require_relative 'board'
require_relative 'game'
require_relative 'messages'

module Mastermind
  
  # Inititalize Main Game Object
  game = Game.new

  # Print Welcome Messages
  Messages.main_menu
  Messages.choose_option
  option = gets.chomp.to_i

  # Start Single Player Loop
  if option == 1
    game.generate_code
    12.times do |i|
      Messages.round(i + 1)
      game.render
      game.user_guess
      break if game.check_win
      game.check_slots
    end
  end


end