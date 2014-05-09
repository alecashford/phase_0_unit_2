$dice_grid = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


class Boggle_board
    def initialize(board)
        @board = board
    end
    
    def create_word(board, *coords)
        coords.map { |coord| @board[coord.first][coord.last]}.join("")
    end
    def get_row(row)
        @board[row]
    end
    def get_col(col)
        $list = []
        for i in 0...@board.length
            $list.push(@board[i][col])
        end
      return $list
    end
end


=begin
	
I actually found this challenge exceedingly simple. I already like
working with classes and objects so this was not difficult to do for me.
I prefer object oriented programming as oposed ot procedural because it
allows you to come up with cleverer solutions to the problems you face.
I can't really say I learned anything new, although I can safely
say that every bit of practice I can get that reinforces my knowledge
of class syntax in ruby is very beneficial.