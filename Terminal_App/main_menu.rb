require_relative "available_course"
require_relative "ioc_information"

option = ""

module Main_Menu
    module_function
def options
    puts "-".center(80,"-")
    rows = []
    rows << [1, "Available Courses"]
    rows << [2, "Information"]
    rows << [3, "End"]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Option:','Subject:'], :rows => rows, :style => {:width => 80}

    puts table
    puts "\n"
    puts "Select option by number".center(80).yellow
    puts "\n"

    
    puts "\n"
    option = gets.chomp
    
if option == "1"
    
    Available_Courses.options

elsif option == "2"
   
    Information.information 

elsif option == "3"
    
end
end 
end