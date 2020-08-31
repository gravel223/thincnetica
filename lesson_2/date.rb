##
#аданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя). Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.


 require 'date'
# проверяем высокосный ли год
def leap_year(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end
months_length = [31,28,31,30,31,30,31,31,30,31,30,31]


puts "Ввведите день:"
day = gets.chomp.to_i
puts "Ввведите номер месяца:"
month = gets.chomp.to_i
puts "Ввведите год:"
year = gets.chomp.to_i
puts "Дата: #{Date.new(year, month, day)}" 

result = 0

if leap_year(year)
  months_length[1] = 29
  puts "Год високосный. Порядковый номер даты: #{ months_length.take(month - 1).sum + day }"
else
  puts "Год не високосный. Порядковый номер даты: #{ months_length.take(month - 1).sum + day }"
end





