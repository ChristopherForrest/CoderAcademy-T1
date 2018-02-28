require_relative 'HTML_courses'
module Subject
    module_function
def option
    option = ""
    option = gets.chomp

    if option != "5"
        case
        when option ==  "1"
        Html_Courses.courses


        end
    end

end
end