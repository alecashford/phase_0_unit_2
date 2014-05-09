# U2.W6: Refactoring for Code Readability


# I worked on this challenge with:

1. Amol Borcar
2. Alec Ashford


# Original Solution

class CreditCard
    def initialize(card_number)
        @card_number = card_number.to_s.split("")
        raise ArgumentError.new("Must be exactly 16 digits!") if @card_number.length != 16 
    end 

    def double
        rcard = @card_number.reverse.map {|i| i.to_i}
        doubled = rcard.each_index.map do |i|
            if i % 2 == 0
                rcard[i] 
            else
                rcard[i] * 2
            end
        end
        return doubled
    end

    def split_sum
        total = 0 
        double.map do |i|
            if i.to_s.length > 1
                double_digit = i.to_s.split("")
                total += (double_digit[0].to_i + double_digit[1].to_i)

            else
                total += i
            end
        end
        return total
    end

    def check_card
        if split_sum % 10 == 0 
            true
        else
            false 
        end
    end
end

# 1. DRIVER TESTS GO BELOW THIS LINE





# Refactored Solution

class CreditCard
    def initialize(card_number)
          @card_number = card_number.to_s.split("")
          raise ArgumentError.new("Must be exactly 16 digits!") if @card_number.length != 16 
    end 

    def check_card
      @card_number = @card_number.map {|i| i.to_i}
      @card_number = @card_number.each_index.map do |i|
            if i % 2 == 1
                @card_number[i]
            else
                @card_number[i] * 2
            end
          end
          @card_number.join("").split("").map { |i| i.to_i }.reduce(:+) % 10 == 0
    end
end

# DRIVER TESTS GO BELOW THIS LINE

card = CreditCard.new(4563960122001999)
puts card




# Reflection 