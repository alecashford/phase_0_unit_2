# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself

# 2. Pseudocode

#same bones as before, with one major difference:
#def roll generattes a random number between 0 and the length of the array, and
#uses that number as an index to recall a random character within the array.


# 3. Initial Solution

class Die
  def initialize(labels)
      if labels.length < 1
          raise ArgumentError
      else
        @labels = labels
    end
  end
    def sides
        @labels.length
    end
  
    def roll
        @labels[rand(@labels.length)]
    end
end

# 4. Refactored Solution
#I'm finding my workflow is confused by the concept of refactoring, especially with
#challenges as straightforward as these. I usually organize my code as I go;
#I have versions of it that you could conisder "unrefactored," but they also
#don't work properly.


# 1. DRIVER TESTS GO BELOW THIS LINE

roll1 = Die.new(["a", "b", "c", "d", "e", "f"])
roll1.roll
puts roll1.roll != nil




# 5. Reflection 

#This was another good exercise, although I did not find it appreciably harder
#than the last one. I have a pretty good grasp of classes, and I enjoy using
#them. The only trick I'm really learning is proper usage of the @ symbol,
#which I've never seen before in any other language I've studied and actually
#makes a lot of sense to me, even though it complicates things slightly.


