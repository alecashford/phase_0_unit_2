class PezDispenser
    def initialize()
        @mag = random_flavor()
    end
    def dispense
        if @mag.length > 0
            puts @mag[@mag.length - 1]
            @mag.delete_at(@mag.length - 1)
        else
            puts "The pez dispenser is empty :("
        end
    end
    def add_pez(new_pez)
        if @mag.length < 12
            @mag.push(new_pez)
        else
            puts "The pez dispenser is already full! :)"
        end
    end
    def random_flavor
        flavors = ["lime", "cherry", "grape", "orange"]
        return [flavors[rand(4)]] * 12
    end
    def count_pez
        return @mag.length
    end
    def cheat
        return @mag
    end
end

=begin
I enjoyed this problem. The parts of it that I found difficult were not
conceptual in nature, as i understood the creation of the class and
the concepts of it pretty well, the part I found challenging was the
different ways of adding and taking away from an array. Ultimately I
chose to add to the end of the array, which serves the same function,
but I had initially wanted to take from the beginning. It really makes
no difference, but that was my only problem.
=end