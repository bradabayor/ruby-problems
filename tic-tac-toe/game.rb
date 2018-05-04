### game.rb ###

class Game

  #attr_accessor :players

  def initialize
    @players = Hash.new
  end

  Player = Struct.new(:name, :token)

  def create_player(name, token)
    player = Player.new(name, token)
    @players[player.token.to_sym] = player
  end

end

