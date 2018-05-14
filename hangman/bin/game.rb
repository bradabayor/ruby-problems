module Hangman

  class Game 
    def initialize
      @words = []
    end

    def load_answers
      lines = File.readlines "lib/5desk.txt"
      lines.each do |word|
        @words << word
      end
    end

    def get_answer
      num = rand(@words.length.to_i)
      puts @words[num]
    end

  end

end