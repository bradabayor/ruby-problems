require_relative "board.rb"
require_relative "messages.rb"

module Hangman
  class Game 
    attr_accessor :answer, :locations, :guess

    def initialize
      @board = Board.new
      @words = []
      @answer = ""
      @locations = []
    end

    def load_answers
      lines = File.readlines "lib/5desk.txt"
      lines.each do |word|
        @words << word
      end
    end

    def get_answer
      num = rand(@words.length.to_i)
      @answer = @words[num].split("").slice(0..-3)
    end

    def play_round
      Messages.get_letter
      @guess = gets.chomp.to_s
      @answer.each_with_index { |l,i| @locations << i if l == @guess }
    end

    def start_board
      @board.create_board(@answer.length)
    end

    def render_board
      @board.render_turn(@locations,@guess)
    end
  end
end