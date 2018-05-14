module Hangman
  class Board
    attr_reader :slots

    def initialize(letters)
      @slots = []
      letters.times do
        @slots << "_"
      end
    end

    def create_board(letters)
      puts @slots.join(" ")
    end

    def render_turn(locations,guess)
      locations.each { |slot| @slots[slot] = guess } if locations != nil
      puts @slots.join(" ")
    end

  end
end