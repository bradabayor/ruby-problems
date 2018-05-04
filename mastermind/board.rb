class Board

  def initialize
    @slots = [0, 0, 0, 0, 0, 0]
  end

  def reset_board
    @slots = [0, 0, 0, 0, 0, 0]
  end

  def render_board
    @slots.each { |slot| slot = "X" }
    to_string
  end

  def to_string
    puts %{
      +---+---+---+---+---+---+
      | #{@slots[0]} | #{@slots[1]} | #{@slots[2]} | #{@slots[3]} | #{@slots[4]} | #{@slots[5]} |
      +---+---+---+---+---+---+
    }
  end

end

board = Board.new

board.render_board