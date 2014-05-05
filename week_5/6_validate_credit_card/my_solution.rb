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


=begin

I think this was an interesting challenge, and the most important thing I learned was how to use the .each {}
feature in ruby. I have not seen this in other languages and I think it is an intelligent way of doing things.
I can't tell if my code is DRY or not; I think it is, but I'm sure a more qualified person could look at it
and improve it. Nonetheless, it seems like it works, with two exceptions in the driver code. It claims it does
not return an error when the number has fewer or more than 16 digits, but it does, and when I run it in the
terminal, I get an error. I could not figure out why this was the case.
