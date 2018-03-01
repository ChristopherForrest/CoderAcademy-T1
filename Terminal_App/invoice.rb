require_relative "basket"
require_relative "main_menu"

module Invoice
    module_function

    def invoice
    
       courses = IO.read("course_selections.txt")
       puts "      Invoice      ".center(80,"-")
       puts courses  
       total = IO.read("total_cost.txt")
       puts "-".center(80,"-")
       puts "Total Fees (Before GST): " + "$".yellow + total.yellow
       total_with_GST = total.to_f * 1.1
       total_with_GST = total_with_GST.to_i
       puts "Total Fees (With GST): " + "$".yellow + total_with_GST.to_s.yellow
       puts "-".center(80,"-")
       
       puts "Would you like to proceed with the transaction? (Y/N)"
       decision = gets.chomp
       if decision == "y"
        puts "Please enter valid email to receive receipt"
        customer_email = gets.chomp
        # Future Feature - takes our totals and sends invoice in table format to customers email address
        puts "Thank you for your purchase! A receipt has been sent to you via Email".green
       puts "\n"
        puts "Would you like to continue shopping? (Y/N)"
        continue_shopping = gets.chomp
          if continue_shopping == "y"
             Main_Menu.options
          else
          end

       else
        puts "Transaction not completed!"
        Main_Menu.options

       end



    end
end


