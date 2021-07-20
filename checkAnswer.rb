# Return true or false based on the answer
require "active_support/all"

def checkAnswer(num1, num2, answer)
  rightAnswer = num1 + num2

  if answer == rightAnswer
    return true
  else
    return false
  end
end
