# Helper Methods
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

# Define your play method below
def play(board)
  has_won = false

  for row in 1..9 do
    turn(board)
  end
  # until has_won
    # if board[0] == "X" && board[1] == "X" && board[2] = "X"
    #   has_won = true
    # elsif board[0] == "X" && board[3] == "X" && board[6] = "X"
    #   has_won = true
    # elsif board[0] == "X" && board[4] == "X" && board[8] = "X"
    #   has_won = true
    # end
  # end
end
