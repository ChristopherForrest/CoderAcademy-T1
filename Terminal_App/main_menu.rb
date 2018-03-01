require_relative "available_course"
require_relative "ioc_information"

option = ""

module Main_Menu
    module_function
def options
    puts "-".center(80,"-")
    puts "Availble courses | Information | End"
    puts "-".center(80,"-")
    puts "\n"
    option = gets.chomp
    
if option == "a"
    
    Available_Courses.options

elsif option == "information"
   
    Information.information 

elsif option == "End"
    
end
end 
end