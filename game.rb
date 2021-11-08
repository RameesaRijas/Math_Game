class Game
  attr_accessor :player_turn
  def initialize
    @player_turn = 1
  end

  def next_Player
    @player_turn += 1
  end
  
  def game_status(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3      #{player2.name}: #{player2.lives}/3"
  end

  def winner(player1, player2)
    puts (player1.lives > player2.lives) ? "#{player1.name} Wins with score #{player1.lives}/3" : "#{player2.name} Wins with score #{player2.lives}/3"
  end
end