module Hangman
  class Messages
    def self.get_letter
      puts %{
  Enter Letter:
      }
    end

    def self.turn_counter(turn)
      puts %{
  Turns Remaining: #{turn}
      }
    end
  end
end