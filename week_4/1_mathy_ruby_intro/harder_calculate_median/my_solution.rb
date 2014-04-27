def median(arr)
    arr = arr.sort
    if arr.length % 2 != 0
        return arr[arr.length / 2.0]
    else
        return (arr[((arr.length / 2) - 1)] + arr[(arr.length / 2)]) / 2.0
    end     
end


#I found this challenge fairly easy, as I have done similar stuff in other languages and recently in javascript,
#so the fundamentals of the challenge were the same, the only differences were working with floating points and
#not integers. I didn't really learn much on this challenge, but it helps just to work like this in ruby, as I
#am still getting used to the syntax.
