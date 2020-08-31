##
# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)
alphabet = ['а', 'б', 'в', 'г', 'д', 'е', 'ё', 'ж', 'з', 'и', 'й', 'к', 'л', 'м', 'н', 'о', 'п', 'р', 'с', 'т', 'у', 'ф', 'х', 'ц', 'ч', 'ш', 'щ', 'ь', 'ы', 'ъ', 'э', 'ю', 'я']
vowels = 'аеёиоуыэюя'
vowerls_hash = {}
counter = 0;
alphabet.each.with_index(1) do |letter, index|
  if vowels.include?(letter)
    serial_number = index 
  	vowerls_hash[letter] = serial_number
  end	
end
puts vowerls_hash


