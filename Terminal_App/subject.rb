require_relative 'HTML_courses'
require_relative 'Css_courses'
require_relative 'Javascript_Courses'
require_relative 'Ruby_Courses'
require_relative 'Python_Courses'
require_relative 'C_Sharp_Courses'

require 'colorize'
module Subject
    module_function
def option
    option = ""
    option = gets.chomp

    if option != "7"
        case

        when option ==  "1"
        Html_Courses.courses

        when option == "2"
        Css_Courses.courses

        when option == "3"
        Javascript_Courses.courses

        when option == "4"
        Ruby_Courses.courses
        
        when option == "5"
        Python_Courses.courses

        when option == "6"
        C_Sharp_Courses.courses

    

        end
    end

end
end