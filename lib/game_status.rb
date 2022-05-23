# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2],
[3,4,5],
[6,7,8],
[0,3,6],
[1,4,7],
[2,5,8],
[0,4,8],
[2,4,6]
]

def won?(board)
  won = false 
  WIN_COMBINATIONS.each do |win| 
    win_index_1 = win[0]
    win_index_2 = win[1]
    win_index_3 = win[2]
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
    if (position_1 == "X" and position_2 == "X" and position_3 == "X")
      won = true
      return win
    elsif (position_1 == "O" and position_2 == "O" and position_3 == "O")
      won = true 
      return win
    end
  end 
  won
end 

def full?(board)
  all_full = true 
  board.each do |index|
    if index == " " || index == ""
      all_full = false
    end 
  end 
  all_full
end 

def draw?(board)
  if won?(board) == false && full?(board) == true
    return true
  else 
    return false
  end 
end 

def over?(board)
  if won?(board) != false
    return true 
  elsif draw?(board) == true 
    return true 
  elsif full?(board) ==true 
    return true 
  else 
    false
  end 
end 

def winner(board)
  if  won?(board) == false  
    return nil
  elsif board[(won?(board))[0]] == "X"
    return "X"
  elsif board[(won?(board)[0])] == "O"
    return "O"
  end 
end 