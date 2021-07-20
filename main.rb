require "pp"
require "active_support/all"

require "./player.rb"
require "./checkAnswer.rb"
require "./turn.rb"

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

userTurn = 1

while player1.tries > 0 && player2.tries > 0
  if userTurn == 1
    if turn(player1.name) == false
      player1.tries -= 1
      puts "#{player1.name}: Seriosuly? No!"
    else
      puts "#{player1.name} YES! You are correct."
    end
    userTurn = 2
  elsif userTurn == 2
    if turn(player2.name) == false
      player2.tries -= 1
      puts "#{player2.name}: Seriosuly? No!"
    else
      puts "#{player2.name} YES! You are correct."
    end
    userTurn = 1
  end
  puts "#P1:#{player1.tries}/3 vs P2: #{player2.tries}/3"
  puts "------- NEW TURN -------"
end

if player1.tries == 0
  puts "Player 2 wins with a score of #{player2.tries}/3"
else
  puts "Player 1 wins with a score of #{player1.tries}/3"
end
