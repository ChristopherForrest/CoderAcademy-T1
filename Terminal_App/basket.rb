require_relative "c_sharp_courses"
require_relative "python_courses"
require_relative "html_courses"
require_relative "javascript_courses"
require_relative "ruby_courses"
require_relative "available_Course"
require_relative "css_courses"
require_relative "clear_basket"
require_relative "main_menu"
require "colorize"

module Basket
    module_function

    def shopping_basket(rows)
         
    puts "\n"
    puts "Select option by number".center(80).yellow
    puts "\n"
    puts "\n"
    puts "Add Course: 1     Clear Courses: 2        Exit: 3        " .center(83)
    puts "\n"
    
    options = ""
    options = gets.chomp
    if options != "Exit"
        
        # p list[0]
        case
           when options == "2"
            Clear_Basket.purge

            when options ==  "1"
            puts "Enter Course ID"
            course_option = gets.chomp
            if course_option != "Exit"
            case

            when
                course_option == "1"
                courses_selected = ""
                courses_selected << IO.read("course_selections.txt")
                unless courses_selected.include?(rows[0].join(","))
                courses_selected += rows[0].join(",") + "\n"
                total = IO.read("total_cost.txt").to_i
                total += rows[0][4]
                IO.write("total_cost.txt",total)
                puts "\n"
                puts "Your current total is: ".yellow + "$".green + IO.read("total_cost.txt").green
                IO.write("course_selections.txt",courses_selected)
                puts courses_selected
                puts "\n"
                Available_Courses.options

                else
                    puts "\n"
                    puts "Already in basket!!".colorize(:light_blue)
                    puts "\n"
                    Available_Courses.options
                end
                
                
            when


                course_option == "2"
                courses_selected = ""
                courses_selected << IO.read("course_selections.txt")
                unless courses_selected.include?(rows[1].join(","))
                courses_selected += rows[1].join(",") + "\n"
                total = IO.read("total_cost.txt").to_i
                total += rows[1][4]
                IO.write("total_cost.txt",total)
                puts "\n"
                puts "Your current total is: ".yellow + "$".green + IO.read("total_cost.txt").green
                IO.write("course_selections.txt",courses_selected)
                puts courses_selected
                puts "\n"
                Available_Courses.options

                else
                    puts "\n"
                    puts "Already in basket!!".colorize(:light_blue)
                    puts "\n"
                    Available_Courses.options
                end


            when
                course_option == "3"
                courses_selected = ""
                courses_selected << IO.read("course_selections.txt")
                unless courses_selected.include?(rows[2].join(","))
                courses_selected += rows[2].join(",") + "\n"
                total = IO.read("total_cost.txt").to_i
                total += rows[2][4]
                IO.write("total_cost.txt",total)
                puts "\n"
                puts "Your current total is: ".yellow + "$".green + IO.read("total_cost.txt").green
                IO.write("course_selections.txt",courses_selected)
                puts courses_selected
                puts "\n"
                Available_Courses.options

                else
                    puts "\n"
                    puts "Already in basket!!".colorize(:light_blue)
                    puts "\n"
                    Available_Courses.options
                end



            end
            
        end
    
    end
end
end
end