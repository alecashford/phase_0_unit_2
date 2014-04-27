def separate_comma(num)
    num = num.to_s
    if num.length < 4
        return num
    else
        splitted = num.split("").reverse
            list = []
            for i in 0...splitted.length
                if (i+1) % 3 == 1 && i != 0
                    list.push(",")
                end
                list.push(splitted[i])
            end
        list = list.reverse.join("")
    end
    return list
end


#This challenge took me a fair ammount of time, until I hit upon a development strategy
#that seemed to work really well for me. Often I start with a good idea of how I'm
#going to figure out the problem, and as I put it into code, it becomes apparent
#that what I thought would be a brilliant plan is acutally not going to work.
#By that point, it's often difficult to salvage the problem since I'm working with
#so much legacy code, and I just have to start from new. This can be lessened by
#starting with pseudocode, but I've found it more effective to write very small
#chunks of code, run it, check if it works and is doing what I want it to, and then
#writing the next part. Rinse, repeat. The process is relatively time consuming,
#but is, on the whole, much more efficient and effective than any other strategy
#I've come into contact with at this point.
