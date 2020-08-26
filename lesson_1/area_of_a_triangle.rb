# найти площадь трегольника формула:  1/2*a*h

puts "Введите основание треугольника:"
a = gets.chomp.to_i
puts "основание равно: #{a}"
puts "Введите высоту треугольника:"
h = gets.chomp.to_i
puts "Высота равна: #{h}"

area_of_a_triangle =0.5 * a * h

puts "площадь треугольника равна: #{area_of_a_triangle.round(0)}"