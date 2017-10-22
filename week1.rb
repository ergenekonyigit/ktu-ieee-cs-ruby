def odev1
  puts "Ad:"
  first_name = gets.chomp
  
  puts "Soyad:"
  last_name = gets.chomp
  
  puts "Yas:"
  age = gets.chomp
  
  puts "Okul:"
  school = gets.chomp
  
  puts "Sehir:"
  city = gets.chomp
  
  puts "Adim #{first_name}. Soyadim #{last_name}. #{age} yasindayim ve #{school}'de okumaktayim. Bu arada #{city}'da yasamaktayim."
end

def odev2
  puts "Sayi giriniz"
  number = gets.to_i
  
  if number % 2 == 0
    puts "Girdiginiz #{number} sayisi cifttir."
  else
    puts "Girdiginiz #{number} sayisi tektir."
  end
end

odev1()
odev2()
