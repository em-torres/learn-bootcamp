# code your #position_taken? method here!
def position_taken?(board, index)
  value = true

  if board[index] == " " || board[index] == "" || board[index] == nil
    value = false
  end

  return value
end
