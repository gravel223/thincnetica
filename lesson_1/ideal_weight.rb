
puts "Введите ваше имя?"
name = gets.chomp
puts "Введите ваш рост?"
height = gets.chomp

ideal_weight = (height.to_i - 110) * 1.15
puts "#{name} ваш идеальный вес: #{ideal_weight.round(2)} "

if ideal_weight < 0
  puts "Ваш вес уже оптимальный"
end

