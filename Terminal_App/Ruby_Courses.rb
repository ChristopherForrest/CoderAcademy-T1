require_relative "basket"

module Ruby_Courses
    module_function
    #Build table to print to screen showing courses per level from broad course selection
    def courses
    rows = []
    rows << [1,'Ruby:Beginners','Feb 19th','Feb 28th', 20000]
    rows << [2,'Ruby:Intermediate','March 1st','March 31st', 40000 ]
    rows << [3,'Ruby:Advanced', "April 1st", "April 30th", 80000]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Course:','Start Date:','End Date:','Price:'], :rows => rows, :style => {:width => 80}
    puts table
    rows
    Basket.shopping_basket(rows) #Call Basket module with rows as parameter
    end

end