# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
#initialize: sides = sides
#sides function simply returns sides
#roll function returns random number between 1 and sides
#have all functions, aside from initialize, in an if else:
	#if sides < 1, raise argument error, else go on



# 3. Initial Solution

class Die
  def initialize(sides)
      if sides < 1
          raise ArgumentError
      else
        @sides = sides
    end
  end
    def sides
        return @sides
    end
    def roll
       rand(@sides) + 1
    end
end



# 4. Refactored Solution



# 5. Reflection

#This exercise was good practice using ruby classes, because it drives home the
#fact that everything in ruby is an object, even error messages. Ironically
#when I was trying to implement the raise ArgumentError, it kept returning an error
#(not a real one, just one that I the raise was returning). I also understand the
#initialize better, and realize it's necessary to turn the arugments that are
#going into the class into useable variables with names. I did some thinking about
#how I could refactor it and I do not think I can make it much simpler, at least
#not with the amount of knowledge I currently have.

