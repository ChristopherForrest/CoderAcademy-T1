require_relative "available_course"
option = ""

module Main_Menu
    module_function
def options
    puts "Availble courses | Information | End"
    option = gets.chomp
    
if option == "a"
    
    Available_Courses.options

elsif option == "End"
    
end
  

end
end