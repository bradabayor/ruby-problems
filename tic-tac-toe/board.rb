class Board

  def initialize
    @board_map = {
      a: 0,
      b: 3,
      c: 6
    }
    @possible_wins = [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 4, 8],
      [2, 4, 6]
    ]
  end

end
