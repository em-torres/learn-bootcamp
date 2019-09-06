# Display Board Method
def display_board(table)
  index = 0

  for data in 1..5 do
    if data % 2 == 0 then
      puts "-----------"
    else
      puts " #{table[index]} | #{table[index + 1]} | #{table[index + 2]} "
      index += 3
    end
  end
end

# Input to Index
def input_to_index(input)
  return input.to_i - 1
end

# Valid Move Method
def valid_move?(board, index)
  value = false

  if !position_taken?(board, index) && index < board.length && index >= 0
    value = true
  end

  return value
end

# Position Taken Method
def position_taken?(board, index)
  value = true

  if board[index] == " " || board[index] == "" || board[index] == nil
    value = false
  end

  return value
end

# Move Method
def move(board, position, char="X")
  board[position] = char
end

# Turn Method
def turn(board)
  user_turn = 0
  index = 0

  until user_turn > 0 && user_turn < 10 && valid_move?(board, index)
    puts "Please enter 1-9:"
    user_turn = (gets.strip)
    index = input_to_index(user_turn)
    user_turn = user_turn.to_i
  end

  move(board, index)
  display_board(board)
end
