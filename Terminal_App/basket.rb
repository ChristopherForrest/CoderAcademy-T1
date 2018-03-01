require_relative "C_Sharp_Courses"
require_relative "available_course"


module Basket
    module_function

    def shopping_basket(rows)
        courses_selected = []
       
    puts "Add Course | Exit"
    
    options = ""
    options = gets.chomp
    if options != "Exit"
        
        # p list[0]
        case
        

            when options ==  "a"
            puts "Enter Course ID"
            course_option = gets.chomp
            if course_option != "Exit"
            case

            when
                course_option == "1"
                courses_selected << rows[0]
                total = IO.read("total_cost.txt").to_i
                total += rows[0][4]
                IO.write("total_cost.txt",total).to_s
                Available_Courses.options
                
                
            when
                course_option == "2"
                courses_selected << rows[1]
                total = IO.read("total_cost.txt").to_i
                total += rows[1][4]
                IO.write("total_cost.txt",total).to_s
                Available_Courses.options
            when
                course_option == "3"
                courses_selected << rows[2]
                total = IO.read("total_cost.txt").to_i
                total += rows[2][4].to_i
                IO.write("total_cost.txt",total).to_s
                Available_Courses.options
                

            end
            
        end
    
        
  
puts IO.read("total_cost.txt")


    end
end
end
end