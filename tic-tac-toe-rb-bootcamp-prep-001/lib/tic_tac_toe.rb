WIN_COMBINATIONS = [
  [0,1,2],  # Top Row
  [3,4,5],  # Middle Row
  [6,7,8],  # Low Row
  [0,3,6],  # Right Column
  [1,4,7],  # Middle Column
  [2,5,8],  # Left Column
  [0,4,8],  # Diagonal 1
  [2,4,6]   # Diagonal 2
]


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


def move(board, index, player_token)
  board[index] = player_token
end


def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end


def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end


def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.strip)

  if !valid_move?(board, input)
    turn(board)
  end

  move(board, input, current_player(board))
  display_board(board)
end


def turn_count(board)
  board.count{|taken| taken == "X" || taken == "O"}
end


def current_player(board)
  turn_count(board) % 2 == 0 ? "X" : "O"
end


def won?(board)
  is_empty = true
  index = 0

  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination # return the win_combination indexes that won.
    end
  end

  false
end


def full?(board)
  sqr_taken = 0
  board_full = false

  board.each do |board_element|
    (board_element == "X" || board_element == "O" ? sqr_taken += 1 : board_full)
  end

  (board.length == sqr_taken ? board_full = true : board_full)

  return board_full
end


def draw?(board)
  full?(board) && !won?(board)
end


def over?(board)
  draw?(board) || won?(board)
end


def winner(board)
  x_count = 0
  o_count = 0

  board.each do |board_element|
    (board_element == "X" ? x_count += 1 : x_count)
    (board_element == "O" ? o_count += 1 : o_count)
  end

  if x_count > o_count
    return "X"
  elsif o_count > x_count
    return "O"
  end

  nil
end


def winner_message(player)
  return "Congratulations #{player}!"
end



def play(board)
  until over?(board)
    turn(board)
  end

  if won?(board)
    puts winner_message(winner(board))
  elsif draw?(board)
    puts "Cat's Game!"
  end
end
