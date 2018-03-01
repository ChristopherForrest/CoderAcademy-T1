require_relative "basket"

module C_Sharp_Courses
    module_function
    def courses
    rows = []
    rows << [1,'C#:Beginners','Feb 19th','Feb 28th', '$20,000']
    rows << [2,'C#:Intermediate','March 1st','March 31st', '$40,000']
    rows << [3,'C#:Advanced', "April 1st", "April 30th", '$80,000']
    table = Terminal::Table.new :title =>"IOC", :headings => ['ID','Course:','Start Date:','End Date:','Price:'], :rows => rows, :style => {:width => 80}
    puts table
    rows
    
    Basket.shopping_basket(rows)

    end

end