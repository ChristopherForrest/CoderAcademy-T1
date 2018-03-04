require_relative "main_menu"
require_relative "clear_basket"

# This is the welcome prompt

module Course
    module_function
      puts "\n"
      puts "Welcome to The Institute of Coding".center(80).yellow
      puts "\n"
      Clear_Basket.purge # Clears basket before shopping

Main_Menu.options




end
