# craps.rb

class Die

  POSSIBLE_VALUES = (1..6).to_a

  def roll
    POSSIBLE_VALUES.sample
  end
  
end

COME_OUT_LOSS = [2, 3, 12]
COME_OUT_WIN = [7, 11]

def won_come_out val
  COME_OUT_WIN.include?(val)
end

def lose_come_out
  COME_OUT_LOSE.include?(val)
end


def won_other_rounds val, orig
  val == orig
end

def print_line
  20.times { print '*' }
  puts
end

def print_roll d1_val, d2_val
  val = d1_val + d2_val
  print_line
  puts "Die 1 roll: #{d1_val}"
  puts "Die 2 roll: #{d2_val}"
  puts "Total     : #{val}"
  print_line
end

def roll
  d1 = Die::new
  d2 = Die::new
  d1_val = d1.roll
  d2_val = d2.roll
  # Note you need an explicit return to return multiple values
  return d1_val, d2_val
end

# EXECUTION STARTS HERE

# puts "Enter your name > "
# name = gets.chomp

game_over = false
game_status = :not_over
come_out = true
point = nil

until (game_over) do
  
  d1_val, d2_val = roll
  val = print_roll d1_val, d2_val
  if come_out
    case val
    when 2, 3, 12
      game_status = :lose
    when 7, 11
      game_status = :win
    else
      point = val
    end
  else
    
          
  game_over = true
end
