# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Bridgette S.

# 1. Pseudocode

# What is the input? 

## Minimum size (non-negative) integer and optional pad value 

# What is the output? (i.e. What should the code return?)

## Either a copy of self or a transformed version of self padded with either nil or optional value 

# What are the steps needed to solve the problem?

## 1. Define two methods #pad and #pad! 
## 2. Make a variable that is equal to the difference of min_size - length of array 
## 3. Append array with value x number of times 


# 2. Initial Solution
class Array
  def pad!(min_size, value=nil)
    x = min_size - self.count 
    x.times do 
      self << value 
    end
    return self
  end
  def pad(min_size, value=nil)
    copy = self.clone
    x = min_size - self.count 
    x.times do 
      copy << value
    end
    return copy
  end
end


# 3. Refactored Solution

# 4. Reflection 

#This one was definitely a challenge for me, which is why I'm glad I paired for it. Bridgette was really good about
#explaining the different things that were going on behind the scenes of the code. I especially found helpful her explanation of the syntax classes, which is something that I did not find compeltely intuitive at first.
