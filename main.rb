require './players'
require './game'
require './questions'
# needs refactor
#just starting 
puts "Welcome to the Game"
puts "Are you ready to Start"
puts "Yes press Enter or wants to quit press cntrl+c"
$stdin.gets
puts "Ok then Let's Start"
puts "Player1 : What is your Name?"

player1 = Player.new(gets.chomp)
puts "Player2 : What is your Name?"
player2 = Player.new(gets.chomp)
puts "Hi #{player1.name} and #{player2.name} Let's Start our Game"

#new gAME obj
game = Game.new


# game checking if lives are remaining
until (player1.lives == 0 || player2.lives == 0) do
  current_player = game.player_turn % 2 == 1 ? player1 : player2
  question = Questions.new
  question.question_maker(current_player)
  answer_from_user = $stdin.gets.chomp.to_i
  if question.check_answer(answer_from_user)
    puts "#{current_player.name} You are Correct"
  else 
    puts "#{current_player.name} You are dead!!!!"
    current_player.lost_lives
  end
  if current_player.lives > 0
    game.game_status(player1, player2)
  end
  game.next_Player
end
game.winner(player1, player2)



