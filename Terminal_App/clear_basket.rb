require_relative "main_menu"
require_relative "basket"
module Clear_Basket
    module_function
    
    def purge
        default_total = 0
        default_selections = ""
        IO.write("total_cost.txt",default_total)
        IO.write("course_selections.txt",default_selections)


    Main_Menu.options

    end
    end