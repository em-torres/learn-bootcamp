def turn_count(board)
  turn = 0
  board.each do |square|
    if square == "X" || square == "O"
      turn += 1
    end
  end

  return turn
end

def current_player(board)
  player = ""

  (turn_count(board) % 2 == 0 ? player = "X" : player = "O")

  return player
end
