require "pp"
require "active_support/all"

require "./checkAnswer.rb"

def turn(name)
  answer = 0
  num1 = rand(0..20)
  num2 = rand(0..20)
  puts "#{name}: What does #{num1} plus #{num2} equal?"
  answer = gets.chomp.to_i

  return checkAnswer(num1, num2, answer)
end
