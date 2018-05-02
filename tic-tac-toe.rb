# MODULE

module Game

  def Game.place_token
    if Token.last_token != nil
      p Token.last_token
      case Token.last_token.location
        when "a1"
          $board.table[0] = Token.last_token.type if $board.table[0] == " "
        when "b1"
          $board.table[1] = Token.last_token.type if $board.table[1] == " "
        when "c1"
          $board.table[2] = Token.last_token.type if $board.table[2] == " "
        when "a2"
          $board.table[3] = Token.last_token.type if $board.table[3] == " "
        when "b2"
          $board.table[4] = Token.last_token.type if $board.table[4] == " "
        when "c2"
          $board.table[5] = Token.last_token.type if $board.table[5] == " "
        when "a3"
          $board.table[6] = Token.last_token.type if $board.table[6] == " "
        when "b3"
          $board.table[7] = Token.last_token.type if $board.table[7] == " "
        when "c3"
          $board.table[8] = Token.last_token.type if $board.table[8] == " "
      end
    end 
  end
end

# CLASSES

class Board
  attr_accessor :table
  
  def initialize
    @table = Hash.new
    9.times do |i|
      @table[i] = " "
    end
    update_board
  end
  
  def update_board
    puts "  A B C "
    puts "1|#{@table[0]}|#{@table[1]}|#{@table[2]}|"
    puts "2|#{@table[3]}|#{@table[4]}|#{@table[5]}|"
    puts "3|#{@table[6]}|#{@table[7]}|#{@table[8]}|"
  end
end

class Token
 
  attr_accessor :type, :location
  
  @@instances = []
  
  def initialize(type, location)
    @type = type
    @location = location
    @@instances << self
  end

  def self.last_token
    return @@instances.last
  end
end

#### START GAME ####

$board = Board.new # Initialize new gameboard

turn = 0 # Reset turn counter

loop do
  puts "Enter Coordinates:"
  location = gets.chomp.downcase

  if turn % 2 == 0
    Token.new("O", location)
  else
    Token.new("X", location)
  end
  
  Game.place_token
  
  $board.update_board
  
  turn += 1
  
end
