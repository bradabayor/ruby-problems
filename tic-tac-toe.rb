# Modules

module Play

  def start_game
    turn = 0
    
    loop do
      puts "Enter Coordinates:"
      location = gets.chomp.downcase
      if turn % 2 == 0
        Token.new("O", location)
      else
        Token.new("X", location)
      end
      Token.place_token
      $board.update_board
      turn += 1
    end
    
  end

  def place_token
    token_type = @@instance.last.type
    case @@instances.last.location
      when "a1"
        $board.table[1] = token_type
      when "a2"
        $board.table[2] = token_type
      when "a3"
        $board.table[3] = token_type
      when "b1"
        $board.table[4] = token_type
      when "b2"
        $board.table[5] = token_type
      when "b3"
        $board.table[6] = token_type
      when "c1"
        $board.table[6] = token_type
      when "c2"
        $board.table[6] = token_type
      when "c3"
        $board.table[6] = token_type
    end
  end

end

# Class

class Board
  attr_accessor :table
  def initialize
    @table = Hash.new
    9.times do |i|
      @table[i] = "."
    end
    update_board
  end
  
  def update_board
    puts "#{@table[0]}#{@table[1]}#{@table[2]}"
    puts "#{@table[3]}#{@table[4]}#{@table[5]}"
    puts "#{@table[6]}#{@table[7]}#{@table[8]}"
  end
end

class Token
  attr_accessor :count, :type
  @@instances = []
  
  def initialize(type, location)
    @type = type
    @location = location
    @@instances << self
  end
  
end

board = Board.new


