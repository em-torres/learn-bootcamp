# Define display_board that accepts a board and prints
# out the current state.
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

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
