module Mastermind
  class Messages
    def self.main_menu
      puts %{
---------------------
Welcome to MASTERMIND
---------------------
      }
    end

    def self.choose_option
      puts %{
  1. One Player
  2. Two Player
  3. Quit
      }
      puts %{
  Choose Option...
      }
    end

    def self.win
      puts %{
  YOU WIN!
      }
    end

    def self.request_guess
      puts %{
  Enter Guess:
      }
    end

    def self.round(round)
      puts %{
  --------      
  Round #{round}:
  --------
      }
    end

    def self.slot_query(slot)
      puts %{
  Slot #{slot}:
      }
    end

  end
end