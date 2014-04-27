def my_solution(arr)
    arr.sort
    if arr.length % 2 != 0
        return arr[arr.length / 2.0]
    else
        return (arr[((arr.length / 2) - 1)] + arr[(arr.length / 2)]) / 2.0
    end     
end

#This was a somewhat harder challenge, but was still fairly easy conceptually
#because we have done the same challenge just in a different language (javascript).
#Because of this, I did not find it too difficult to figure out how to transfer that
#concept into ruby, the only difference between the challenges was forcing floating
#point numbers instead of integers. It was also an important learning opportunity
#to use rspec, which I didn't fully understand until I used it for this challenge.
