<<<<<<< HEAD
require 'pry'

=======
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
WIN_COMBINATIONS = [
[0,1,2], # top_row
[3,4,5], # middle_row
[6,7,8], # bottom_row
[0,3,6], # left_column
[1,4,7], # center_column
[2,5,8], # right_column
[0,4,8], # left_diagonal
[6,4,2] # right_diagonal
]

board = "board"
board = [" "," "," "," "," "," "," "," "," ",]
puts "Welcome to Tic Tac Toe!"

def display_board(board)
<<<<<<< HEAD
=======


>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  new_user_input = user_input.to_i
    new_user_input -= 1
    return new_user_input
end

<<<<<<< HEAD
def move(board, index, token)
  board[index] = token

  return board

end


=======
def move(board, index, player)
  board[index] = player

  return board
  user_input.to_i - 1
  user_input = gets.strip
  index = input_to_index(user_input)
  token = current_player(board)

end

>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def valid_move?(board, index)
  index.between?(0, 8) && !(position_taken?(board, index))
<<<<<<< HEAD
end




def turn(board)
  #puts "Please enter 1-9:"
=======

end

# def turn(board)
#   puts "Please enter 1-9:"
#   num = gets.strip
#   index = input_to_index(num)
#   if valid_move?(board, index)
#     move(board, index, play)
#     display_board(board)
#   else
#
#     turn(board)
#   end
#   if draw?(board)
#     puts "Cat's game!"
#   end
# end

def turn(board)
  puts "Please enter 1-9:"
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)
  token = current_player(board)

  #check for validation
  if valid_move?(board,index)
    puts 'valid move'
    move(board, index, token)
    display_board(board)
   else
    puts 'try again'
    turn(board)
  end
  display_board(board)
end





def won?(board)
  winner = nil
<<<<<<< HEAD
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])
=======
  WIN_COMBINATIONS.each do |combo|
    if combo.all? {|idx| board[idx] == "X"}
      winner = combo
    elsif combo.all? {|idx| board[idx] == "O"}
      winner = combo
    else
      false
    end
  end
  if winner != nil
    winner
  else
    false
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
  end
end

def turn_count(board)
  a = 0
  board.each do |spaces|
    if spaces == "X" || spaces == "O"
      a += 1
    end
  end
  a
end

def current_player(board)
  turn_count(board) % 2 == 0? "X" : "O"
end

def full?(board)
   board.all? {|i| i == "X" || i == "O"}
end

<<<<<<< HEAD
# def draw?(board)
#   if full?(board)
#   else won?(board) == false
#       return true
#     end
#   elsif won?(board) == true
=======
def draw?(board)
  # if full?(board)
  #   if won?(board) == false
  #     true
    if !won?(board) && full?(board)
      return true
    else
      false
    end
  else
    false
    puts "Cats game!"
  end

# def draw?(board)
#   if !won?(board) && full?(board)
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
#     true
#   end
# end

<<<<<<< HEAD
def draw?(board)
  if !won?(board) && full?(board)
    return true
=======
  if full?(board) == true && won?(board) == false
    return true
  else
    false
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
  end
end



<<<<<<< HEAD

=======
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
def over?(board)
  if draw?(board) || won?(board) || full?(board)
    return true
  end
end



def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end

<<<<<<< HEAD
# Define your play method below

# def play(board)
# puts "Plese enter 1-9"
# move_count = []
#   turn.each do |spaces|
#     if spaces == "X" || spaces == "O"
#    move_count.push(1)
#     end
#   end
# move_count.length.to_i
# end
# def play(board)
# counter = 0
#   while counter < 9
#   puts "next turn"
#   turn(board)
#
#   end
#   counter += 1
#
#
# end

# def play(board)
#
#   until over?(board) == true || won?(board) != false
#   puts 'turn'
#     turn(board)
#   end
#   if winner(board)
#     puts "Omedatou!!"
#   elsif draw?(board)
#     puts "Cats game!"
#   else
#     return nil
#   end
# end

def play(board)
   until over?(board)
      turn(board)
   end
   if won?(board)
      winner(board) == "X" || winner(board) == "O"
      puts "Congratulations #{winner(board)}!"
   elsif draw?(board)
      puts "Cat's Game!"
   end
=======


# Define your play method below

def play(board)

move_count = []
turn.each do |spaces|

 if spaces == "X" || spaces == "O"

   move_count.push(1)

 end

end
move_count.length.to_i
>>>>>>> 8cf1b0de45ccad7610b0e811d4439b28f71af007
end
