require './game'
require './questions'
require './output'

output = Output.new
output.game_start
player1, player2 = output.new_players

#new gAME obj
game = Game.new

# game checking if lives are remaining
until (player1.lives == 0 || player2.lives == 0) do
  current_player = game.player_turn % 2 == 1 ? player1 : player2
  question = Questions.new
  output.print_question(current_player, question)
  answer_from_user = $stdin.gets.chomp.to_i

  if question.check_answer(answer_from_user)
    output.correct_answer(current_player)
  else 
    output.wrong_answer(current_player)
    current_player.lost_lives
  end
  if current_player.lives > 0
    output.game_status(player1, player2)
  end
  game.next_Player
end
output.winner(player1, player2)



