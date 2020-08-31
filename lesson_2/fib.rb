##
# Заполнить массив числами фибоначчи до 100
fib = [0, 1]
loop do
  next_num = fib.last(2).sum
  break if next_num >= 100
  fib.push(next_num)
end
puts fib

