# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }



# 2. Pseudocode what happens when the code above runs

#this function gives an error message unless the condition
#within the block is true. The first method call is passing as
#true, but the second is not.

# 3. Copy your selected challenge here

class CreditCard
    def initialize(ccnum)
        @num = ccnum
    end
    def to_array(str)
        return str.to_s.split("").map { |num| num.to_i }
    end

    def count_back(input)
        counter = input.length - 2
        while counter >= 0
            input[counter] = input[counter] * 2
            counter -= 2
        end
        return input.join("").to_s
    end
    def check_card()
        if @num.to_s.length == 16
            almost = to_array(count_back(to_array(@num)))
            sum = 0
            almost.each { |num| sum += num}
            if sum % 10 == 0
                return true
            else
                return false
            end
        else
            raise ArgumentError.new("CC number must have 16 digits!")
        end
    end
end

a = CreditCard.new(4246078846024547)
b = CreditCard.new(2957349672048357)
puts a.check_card == true
puts b.check_card == false

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
    raise "Assertion failed" unless yield
end

a = CreditCard.new(4246078846024547)
b = CreditCard.new(2957349672048357)
assert { a.check_card == true }
assert { b.check_card == false }



# 5. Reflection
=begin

To be honest, I don't see a clear-cut advantage to using assert
over regular driver code or rspec. I suppose if you have a complicated challenge
and want to know precisely what's going wrong there is an advantage to be had,
but for smaller projects driver code is more concise and user-friendly.


