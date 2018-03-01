require_relative "C_Sharp_Courses"
require_relative "Python_Courses"
require_relative "HTML_Courses"
require_relative "Css_Courses"
require_relative "Javascript_Courses"
require_relative "available_course"
require "colorize"

module Basket
    module_function

    def shopping_basket(rows)
         
    puts "\n"
    puts "Add Course | Remove Course | Exit".center(80)
    puts   " (A)            (R)         (E)".center(80)
    
    options = ""
    options = gets.chomp
    if options != "Exit"
        
        # p list[0]
        case
        when options == "r"
            starting_balance = 0
            IO.write("total_cost.txt",starting_balance).to_s
            courses_selected = ["good"]
            puts courses_selected
            Available_Courses.options

            when options ==  "a"
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