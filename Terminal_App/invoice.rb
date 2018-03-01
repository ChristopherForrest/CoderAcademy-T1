require_relative "basket"

module Invoice
    module_function

    def invoice
    
       courses = IO.read("course_selections.txt")
       puts "      Invoice      ".center(80,"-")
       puts courses  
       total = IO.read("total_cost.txt")
       puts "-".center(80,"-")
       puts "Total Fees (Before GST): " + "$".blue + total.blue
       total_with_GST = total.to_f * 1.1
       total_with_GST = total_with_GST.to_i
       puts "Total Fees (With GST): " + "$".blue + total_with_GST.to_s.blue
       puts "-".center(80,"-")

        # course_selections.txt
        # total_cost.txt
    


    end

end