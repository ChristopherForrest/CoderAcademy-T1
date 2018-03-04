require_relative "main_menu"

module Information
    module_function

def information


    puts "\n"
    puts "Email: info@Institute_of_Codin.edu.au

    Sydney
    Phone: +61 2 8355 3822
    Level 2, 7 Kelly Street
    Ultimo, NSW 2007
    
    Melbourne
    Phone: +61 3 8683 7093
    Level 13, 120 Spencer Street,
    Melbourne, VIC 3000
    
    Brisbane
    Phone: +61 2 8355 3822
    205 North Quay
    Brisbane City, QLD 4000"
puts "\n"
puts "q to go back main menu "
option = gets.chomp
puts "\n"
if option == "q" || "Q"
    puts "\n"
    Main_Menu.options
else
end
end
end
