module Hangman
  class Board
    attr_reader :slots

    def initialize
      @slots = []
    end

    def create_board(letters)
      letters.times do
        @slots << "_"
      end
      puts @slots.join(" ")
    end

    def render_turn(locations,guess)
      locations.each { |slot| @slots[slot] = guess } if locations != nil
      puts @slots.join(" ")
    end

  end
end