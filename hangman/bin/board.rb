module Hangman
  class Board
    attr_accessor :slots

    def initialize
      @slots = []
    end

    def create_board(letters)
      letters.times do
        @slots << "_"
      end
    end

    def render
      puts @slots.join(" ")
    end

  end
end