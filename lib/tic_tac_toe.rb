class TicTacToe
  def initialize(board = nil)
  @board = board || Array.new(9, " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def display_board
  puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
  puts "-----------"
  puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
  puts "-----------"
  puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
end

def input_to_index(user_input)
  index = user_input.to_i
  index -= 1
  return index
end

def move(index, character = "X")
  @board[index] = character
  return @board
end

def position_taken?(index)
  if @board[index] == " " || @board[index] == "" || @board[index] == nil
    return false
  elsif @board[index] == "X" || @board[index] == "O"
    return true
end
end

def valid_move?(position)

	if !position_taken?(position) && position.between?(0,8)
		true
 	else
		false
 	end
 end

 def turn_count
    counter = 0
    @board.each do |element|
      if (element == "X" || element == "O")
        counter += 1
      end
    end
    return counter
  end

  def current_player
   if turn_count == 0
     return "X"
   elsif turn_count % 2 == 0
     return "X"
   else return "O"
   end
 end

end

def turn
  puts "Please enter 1-9:"
input = gets.chomp
index = input_to_index(input)
if valid_move?(index) == true
  player_move(index, current_player)
  display_board
else .turn
end
end
