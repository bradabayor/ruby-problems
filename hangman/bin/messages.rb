module Hangman
  class Messages
    def self.get_response
      puts %{
  Enter Letter or Action:
      }
      return response = gets.chomp.to_s
    end

    def self.display_status(letters, turn)
      puts %{
  Turns Remaining: #{turn} - Guessed Letters: #{letters.join(",")}
      }
    end
  end
end