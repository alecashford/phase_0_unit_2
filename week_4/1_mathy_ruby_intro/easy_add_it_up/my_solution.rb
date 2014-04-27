def total(arr)
    x = 0
	for i in 0...arr.length
		x = arr[i] + x
	end
    return x
end

#This was a fairly easy challenge, the only problems that came up were in
#getting te range right. For a long time I was trying to put only arr.length
#and not the 0... that actually made it a range. This didn't work obviously,
#and is just one more example of how background in one programming language (python) can
#often screw you up when you're trying to work in another language.
