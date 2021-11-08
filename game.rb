# class game
# player turn state - for switch between two players
class Game
  attr_accessor :player_turn
  def initialize
    @player_turn = 1
  end

  def next_Player
    @player_turn += 1
  end
end