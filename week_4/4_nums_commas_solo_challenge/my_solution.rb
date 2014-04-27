def separate_comma(num)
    num = num.to_s
    #If number is fewer than 4 characters, do nothing
    if num.length < 4
        return num
    else
      #split input into array and reverse it
        splitted = num.split("").reverse
            list = []
            #place each character in list, and add a comma on every third character
            for i in 0...splitted.length
                if (i+1) % 3 == 1 && i != 0
                    list.push(",")
                end
                list.push(splitted[i])
            end
            #join array back into string, return that string
        list = list.reverse.join("")
    end
    return list
end


#This challenge was fairly challenging for me, especially because I was using a language that I am still learning.
#However, after a while I was able to get the hang of the syntax and put out a product that both worked but
#was also as simple as possible. I didn't want any extra features in this code, just the essentials.
