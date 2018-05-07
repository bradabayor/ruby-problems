require_relative 'board'

module Mastermind
  class Game
    def initialize
      @board = Board.new
      @guess = [" ", " ", " ", " "]
      @exacts = 0
      @exists = 0
    end

    def generate_code
      @board.generate_code
    end

    def render
      @board.render(@guess)
    end

    def check_slots
      @board.check_slots(@guess)
    end

    def check_win
      @board.check_win(@guess)
    end

    def user_guess
      @guess = []
      4.times do |i|
        Messages.slot_query(i + 1)
        @guess << gets.chomp.to_i
      end
    end

  end
end