puts "Введите 3 числа"
puts "Введите a:"
a = gets.chomp.to_f
puts "a равно: #{a}"
puts "Введите b:"
b = gets.chomp.to_f
puts "a равно: #{b}"
puts "Введите с:"
c = gets.chomp.to_f
puts "a равно: #{c}"

discriminante = (b ** 2) - 4 * a * c


puts discriminante

if discriminante < 0
  puts "Корней нет"
elsif discriminante == 0
  puts "Дискриминант равен #{discriminante} "
elsif discriminante > 0
  root = -b - Math.sqrt(discriminante) / (2 * a)
  x_one = (-b - root) / (2 * a)
  x_two = (-b + root) / (2 * a)
  puts "Дискриминант: #{discriminante} Корень x1: #{x_one} Корень x2: #{x_two}"
