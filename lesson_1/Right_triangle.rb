puts "Введите три строны треугольника:"
puts "A:"
a = gets.chomp.to_i
puts "B:"
b = gets.chomp.to_i
puts "C:"
c = gets.chomp.to_i
a1 = a**2
b1 = b**2
c1 = c**2


if a1 > b1 && a1 > c1 && a1 + b1 == c1 or b1 + c1 == a1 or a1 + c1 == b1
    puts "Треугольник прямоугольный."
    puts "Сторона A является гипотенузой"

elsif b1 > a1 && b1 > c1 && a1 + b1 == c1 or b1 + c1 == a1 or a1 + c1 == b1
	puts " Треугольник прямоугольный."
	puts "Сторона A является гипотенузой"
	

elsif c1 > b1 && c1 > a1 && a1 + b1 == c1 or b1 + c1 == a1 or a1 + c1 == b1
    puts "Треугольник прямоугольный." 
	puts "Сторона C является гипотенузой"

elsif a == b && b == c && a == c 
	puts "Ваш треугольник равносторонний."

elsif a == b && b != c
	puts "Ваш треугольник равнобедренный."

elsif b == c && a != b
	puts "Треугольник равнобедренный."

elsif a == c && b != c
	puts "Треугольник равнобедренный."

else a != b && b != c && c != a
	puts "Треугольник равнобедренный."
end


