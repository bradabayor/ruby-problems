require 'json'

require_relative "board.rb"
require_relative "messages.rb"

module Hangman
  class Game 
    attr_accessor :board, :answer, :locations, :guess, :guessed

    def initialize
      @words = []
      lines = File.readlines "lib/answers.txt"
      lines.each do |word|
        @words << word
      end
      
      @board = Board.new
      @locations = []
      @guessed = []
    end

    def select_answer
      num = rand(@words.length.to_i)
      @answer = @words[num].downcase.split("").slice(0..-3)
    end

    def play_round(guess)
      @locations = []
      @guessed << guess
      @answer.each_with_index { |l,i| @locations << i if l == guess }
      @board.render_turn(@locations,guess)
    end

    def initial_render
      @board.create_board(@answer.length)
    end

    def check_win?
      return true if @board.slots == @answer
    end

    def save_json(turn)
      save = JSON.dump({
        :turns_rem => turn,
        :answer => @answer,
        :guessed => @guessed
      })
      File.open("lib/saves.txt", "w") { |f| f.write(save) }
    end

  end
end