# code your #valid_move? method here
def valid_move?(board, index)
  value = false

  if !position_taken?(board, index) && index < board.length
    value = true
  end

  return value
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  value = true

  if board[index] == " " || board[index] == "" || board[index] == nil
    value = false
  end

  return value
end
