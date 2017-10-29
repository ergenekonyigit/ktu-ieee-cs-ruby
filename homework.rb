class Homework
  def w1_1
    puts "Name:"
    first_name = gets.chomp
    
    puts "Surname:"
    last_name = gets.chomp
    
    puts "Age:"
    age = gets.chomp
    
    puts "School:"
    school = gets.chomp
    
    puts "City:"
    city = gets.chomp
    
    puts "My name is #{first_name} #{last_name}. I'm #{age} years old and studying #{school}. Btw i'm live in #{city}."
  end

  def w1_2
    puts "Input:"
    number = gets.to_i
    
    if number.even?
      puts "#{number} is double."
    else
      puts "#{number} is odd."
    end
  end

  def w2_1
    puts "How many students?:"
    count = gets.to_i

    std = Array.new(count) { Hash.new }
    
    (0...count).each do |i|
      puts "#{i+1}. student; name, midterm score, final score:"
      std[i][:name] = gets.chomp
      std[i][:midterm] = gets.to_i
      std[i][:final] = gets.to_i
    end

    (0...count).each do |i|
      std[i][:average] = (std[i][:midterm] + std[i][:final]) / 2
      puts "#{std[i][:name]}'s average: #{std[i][:average]}"
      puts std[i][:average] >= 50 ? "#{std[i][:name]} succeed" : "#{std[i][:name]} failed, makeup exam needed."
    end
    
    (0...count).each do |i|
      if std[i][:average] < 50
        puts "#{std[i][:name]} makeup exam score:"
        std[i][:makeup] = gets.to_i
        std[i][:average] = (std[i][:midterm] + std[i][:makeup]) / 2
        puts "#{std[i][:name]}'s new average: #{std[i][:average]}"
      end

      puts "#{std[i][:name]} succeed." if std[i][:average] >= 50
      puts "#{std[i][:name]} failed." if std[i][:average] < 50
    end

    (0...count).each do |i|
      puts w2_2(std[i])
    end
  end

  def w2_2 std
    case std[:average]
    when 90..100
      "#{std[:name]}'s grading: AA"
    when 80..90
      "#{std[:name]}'s grading: BA"
    when 70..80
      "#{std[:name]}'s grading: BB"
    when 60..70
      "#{std[:name]}'s grading: CB"
    when 50..60
      "#{std[:name]}'s grading: CC"
    when 40..50
      "#{std[:name]}'s grading: DC"
    when 30..40
      "#{std[:name]}'s grading: DD"
    when 20..30
      "#{std[:name]}'s grading: DF"
    when 10..20
      "#{std[:name]}'s grading: DD"
    when 0..10
      "#{std[:name]}'s grading: FF"
    else
      "error"
    end
  end
end