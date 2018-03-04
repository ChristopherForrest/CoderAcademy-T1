require_relative "available_course"
require_relative "ioc_information"

option = ""
# This is main menu selection

module Main_Menu
    module_function
def options
    puts "-".center(80,"-")
    rows = []
    rows << [1, "Available Courses"]
    rows << [2, "Information"]
    rows << [3, "End"]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Option:','Subject:'], :rows => rows, :style => {:width => 80}
    puts table # Prints table using Gem ("Terminal-Table")
    puts "\n"
    puts "Select option by number".center(80).yellow
    puts "\n"

    
    puts "\n"
    option = gets.chomp
    
if option == "1"
    
    Available_Courses.options # Takes users to table of courses

elsif option == "2"
   
    Information.information # Prints information of campus

else option == "3"
exit

end
end 
end