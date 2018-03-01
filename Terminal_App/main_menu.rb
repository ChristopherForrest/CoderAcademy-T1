require_relative "available_course"
require_relative "ioc_information"

option = ""

module Main_Menu
    module_function
def options
    puts "Availble courses | Information | End"
    option = gets.chomp
    
if option == "a"
    
    Available_Courses.options

elsif option == "information"
   
    Information.information 

elsif option == "End"
    
end
end 
end