module Hangman
  class Messages
    def self.get_letter
      puts %{
  Enter Letter:
      }
    end

    def self.display_status(letters, turn)
      puts %{
  Turns Remaining: #{turn} - Guessed Letters: #{letters.join(",")}
      }
    end
  end
end