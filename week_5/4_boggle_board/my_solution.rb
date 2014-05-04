$boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]

def get_row(row)
    $boggle_board[row]
end

def get_col(col)
  $list = []
  for i in 0...$boggle_board.length
    $list.push($boggle_board[i][col])
  end
  return $list
end

#Reflection:
#The greatest thing this exercise taught me was how to use nested arrays.
#I was not positive how to use them initially and I am glad that I leaned
#Ruby's way of treating them. They seem very useful for creating lists within
#lists that are highly related to each other, although I would be a little
#hesitant to use them in any other situation.
