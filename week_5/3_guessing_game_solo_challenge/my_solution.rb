# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

#define class variable answer
#define method guess which takes in @answer and outputs low, correct, or equal
#using if, elsif, and else.
#define method solved? that returns true if input == correct, and false otherwise


# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = rand(answer) + 1
  end
  def guess(guess)
    @guess = guess
    if @guess < @answer
        return :low
    elsif @guess > @answer
        return :high
    else
        return :correct
    end
  end
  def solved?
      if @guess == @answer
          return true
      else
          return false
      end
  end
end

# 5. Reflection 

#I'm actually quite confused by this one. My code seems to work, and does everything
#the criteria on the github asks it to do, yet it does not seem to want to pass the
#driver tests. I keep getting the same 3 error messages (including the enigmatic
#returns :correct when the guess is correct). I have been racking my brains over
#how this is even posssible. Nonetheless, I'm pretty proud of this work, it works
#like I expected it to work and I learned more about the :key feature of ruby,
#which is definitely something I will use more in the future.
