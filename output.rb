## all output logic
require './players'

class Output
  def initialize
  end

  def game_start
    puts "Welcome to the Game"
    puts "Are you ready to Start"
    puts "Ok then Let's Start"
  end

  def new_players
    puts "Player1 : What is your Name?"
    player1 = Player.new(gets.chomp)
    puts "Player2 : What is your Name?"
    player2 = Player.new(gets.chomp)
    puts "Hi #{player1.name} and #{player2.name} Let's Start our Game"
    return player1, player2
  end

  def print_question(player, question)
      puts "#{player.name} > What does #{question.number_one} plus #{question.number_two} equal?"
  end

  def correct_answer(player)
    puts "#{player.name} You are Correct"
  end

  def wrong_answer(player)
    puts "#{player.name} You are dead!!!!"
  end

  def game_status(player1, player2)
    puts "#{player1.name}: #{player1.lives}/3   #{player2.name}: #{player2.lives}/3"
  end

  def winner(player1, player2)
    puts (player1.lives > player2.lives) ? 
    "#{player1.name} Wins with score #{player1.lives}/3" : 
    "#{player2.name} Wins with score #{player2.lives}/3"
    puts "----Game Over-----"
    puts "  Good Bye  "
  end
end