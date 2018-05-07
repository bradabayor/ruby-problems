module Mastermind
  class Board
    attr_accessor :slots, :feedback

    def initialize
      @slots = [0, 0, 0, 0]
      @feedback = [0, 0]
    end

    def reset
      @slots = [0, 0, 0, 0]
    end

    def render(guess)
      puts %{
          1   2   3   4
        +---+---+---+---+
        | #{guess[0]} | #{guess[1]} | #{guess[2]} | #{guess[3]} |
        +---+---+---+---+
          A   B
        +---+---+
        | #{@feedback[0]} | #{@feedback[1]} |
        +---+---+
      }
    end

    def generate_code
      @code = []
      4.times do
        @code << (rand(5) + 1)
      end
    end

    def check_slots(guess)
      rem_nums = [] # Reset counters
      rem_guesses = []
      exist_count = []

      @feedback[0] = 0 # Reset tally
      @feedback[1] = 0

      guess.each_with_index do |num, i| # Find perfect guesses
        if @code[i] == num
          @feedback[0] += 1
        else
          rem_nums << @code[i]
          rem_guesses << num
        end
      end

      rem_nums.each do |num| # Find correct numbers
        number = rem_guesses.find { |i| i == num }
        exist_count << number unless number == nil
      end
      @feedback[1] = exist_count.length
    end

    def check_win(guess)
      return true if guess == @code
    end
  end
end