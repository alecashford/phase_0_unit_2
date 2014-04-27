def my_array_sorting_method(source)
  source.sort_by { |var| var.downcase }
end

#the above is a method that sorts an array alphabetically, ignoring case. The
#reason why it's important to sort by .downcase is otherwise, you will have capitalized
#letters appear out of order, so that in the new array, you are getting the contents
#ordered first by number, then by capitalized letter, then by lowercase letter.
#However, if you wanted capitalized and lowercase letters to be treated differently,
#all you would have to do would be remove the .donwcase.
#The reason you want to have "sort_by" as opposed to "sort" is because it does not
#modify the original array.


def my_hash_sorting_method(source)
  source.sort_by { |name, age| age }
end

#The method (sort_by) that was used in the previous example can be used to great
#effect in sorting a hash as well. In this case, we are defining two parts of the
#has (name and age) and then simply sorting them by age. This funciton also has
#the added benefit of not altering the original source hash.






#reflection

#I actually enjoyed this challenge more than I thought I would. I found it fun
#researching all of the different sorting algorithms, many of which I had never
#found a reason to use before. I now understand the curly bracket sorting syntax
#better, and feel like I will be able to use it effectively on my own.
