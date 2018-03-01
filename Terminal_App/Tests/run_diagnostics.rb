require 'colorize'
require_relative "../course_app"

def expect actual, message, expected
    if actual == expected then 
        puts "  PASS #{message}".colorize(:green)
    else
        puts "  FAIL #{message} expected #{expected}, but got #{actual}".colorize(:yellow)
    end
end

def subject subject_name
    puts subject_name
end

puts "\n"


def test_course_app
    subject "IOCA"

    default = 0
    expect(0, "dog =",0)

end

puts test_course_app





#     sandwich = make_sandwich type: 'beef', number_of_sandwiches: 1
#     number_of_steps = sandwich.length
#     expect(number_of_steps, "Number of steps", 9)

#     correct_pieces_of_bread = sandwich[1] 
#     expect correct_pieces_of_bread, "Correct pieces of bread", "take 2 pieces of bread"

#     opening_correct_jar = sandwich[2]
#     expect opening_correct_jar, "Opening correct jar", "open beef jar"

#     content_in_jar = sandwich[3]
#     expect content_in_jar, "Contents in jar", "if there is beef in jar"

#     need_to_cry = sandwich[4]
#     expect need_to_cry, "Need to cry", "however no need to cry"

#     enjoy_sandwich = sandwich[8]
#     expect enjoy_sandwich, "Was it enjoyable" ,"enjoy!"
# end

puts test_for_beef_sandwich