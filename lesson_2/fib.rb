##
# Заполнить массив числами фибоначчи до 100

fib = [0, 1]
loop do
  next_num = fib[-1] + fib[-2]
  if next_num >= 100
  	break
  else
    fib.push(next_num)
  end
end
puts fib