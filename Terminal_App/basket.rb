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

    def shopping_basket(rows)    #Pull array with courses selected from Subject Module
    #Adding some cosmetics to the menu   
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
            Clear_Basket.purge    #Call purge function from module Clear_basket to empty list

            #Execute code when option from previous method is typed
            when options ==  "1"
            puts "Enter Course ID"
            course_option = gets.chomp   #Assign input from user to a variable
            if course_option != "Exit"   #loop through options until Exit is typed by user
            case

            when
                course_option == "1"
                courses_selected = ""   #Initial value for variable
                courses_selected << IO.read("course_selections.txt")  #Append courses selected from text file to variable
                unless courses_selected.include?(rows[0].join(","))   #Verify if selection is already in array
                courses_selected += rows[0].join(",") + "\n"   #Assign selection as string to variable
                total = IO.read("total_cost.txt").to_i   #Assign total cost from text file as integer to variable 
                total += rows[0][4]   #Add price from row array to total, so total is updated everytime a course is added to list
                IO.write("total_cost.txt",total)  #Rewrite text file with new total
                puts "\n"
                puts "Your current total is: ".yellow + "$".green + IO.read("total_cost.txt").green #Prints current total to screen
                IO.write("course_selections.txt",courses_selected)
                puts courses_selected  #Prints array of courses_selected
                puts "\n"
                Available_Courses.options   #Returns to Available course menu in case user wants to add a new course

                else
                    puts "\n"
                    puts "Already in basket!!".colorize(:light_blue)
                    puts "\n"
                    Available_Courses.options
                end
                
                
            when

                #Similar approach as for option 1
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
                #Similar approach as for option 1
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

                else  #Return to Available courses when course is alread in basket
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