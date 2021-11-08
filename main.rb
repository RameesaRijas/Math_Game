require './players'

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




