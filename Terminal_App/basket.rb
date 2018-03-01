require_relative "C_Sharp_Courses"
require_relative "available_course"
module Basket
    module_function

    def shopping_basket(rows)
        courses_selected = []
        total = 0.00
    puts "Add Course | Exit"
    
    options = ""
    options = gets.chomp
    if options != "Exit"
        
        # p list[0]
        case

            when options ==  "add course"
            puts "Enter Course ID"
            course_option = gets.chomp
            if course_option != "Exit"
            case

            when
                course_option == "1"
                courses_selected << rows[0]
                p rows[0]
                Available_Courses.options
                
            when
                course_option == "2"
                courses_selected << rows[1]
                Available_Courses.options
            when
                course_option == "3"
                courses_selected << rows[2]
                Available_Courses.options

            end
        end
    
        
    puts total

pp courses_selected

    end
end
end
end