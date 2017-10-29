require './homework.rb'

class Interface
  def initialize
    @hm = Homework.new
    menu_list
    menu_choice
  end
  
  def menu_list
    puts "---------------------------------------"
    puts "        KTU-IEEE-CS-RUBY-COURSE        "
    puts "---------------------------------------"
    puts "  1  ▸  Week1                          "
    puts "  2  ▸  Week2                          "
    puts "  3  ▸  Week3                          "
    puts "  4  ▸  Week4                          "
    puts "  5  ▸  Week5                          "
    puts "  6  ▸  Week6                          "
    puts "---------------------------------------"
    puts "  0  ▸  Exit                           "
    puts "---------------------------------------"
  end

  def menu_choice
    puts "Choose Week:"
    choice = gets.to_i
    case choice
    when 0
      exit(0)
    when 1
      @hm.w1_1
      @hm.w1_2
    when 2
      @hm.w2_1
    when 3
      puts "to-do"
    when 4
      puts "to-do"
    when 5
      puts "to-do"
    when 6
      puts "to-do"
    else
      puts "error"
    end
    menu_list    
    menu_choice    
  end
end