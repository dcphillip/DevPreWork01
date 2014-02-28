upto = 20

def prime? x 
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end

def increment upto
  a = 1
  (1..upto).each { |x| a*= x if prime? x }
  a
end

def no_remainder? x, upto
  (1..upto).each { |y| return false if x % y != 0 }
  true
end

increment = increment upto
x = increment
try_number = 1

while true
  if no_remainder? x, upto
    puts "The smallest number is #{x}"
    break
  end
  try_number += 1
  x = try_number * increment
end