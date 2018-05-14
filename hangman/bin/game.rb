require_relative "board.rb"
require_relative "messages.rb"

module Hangman
  class Game 
    attr_accessor :answer, :locations, :guess

    def initialize
      # Load answers
      @words = []
      lines = File.readlines "lib/5desk.txt"
      lines.each do |word|
        @words << word
      end

      # Select Answer
      num = rand(@words.length.to_i)
      @answer = @words[num].downcase.split("").slice(0..-3)

      # Initialize Board
      @board = Board.new(@answer.length)
      @locations = []
    end

    def play_round
      @locations = []
      Messages.get_letter
      @guess = gets.chomp.to_s
      @answer.each_with_index { |l,i| @locations << i if l == @guess }
      @board.render_turn(@locations,@guess)
    end

    def initial_render
      @board.create_board(@answer.length)
    end

    def check_win?
      return true if @board.slots == @answer
    end
  end
end