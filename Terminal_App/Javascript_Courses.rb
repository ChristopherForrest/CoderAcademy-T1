module Javascript_Courses
    module_function
    def courses
    rows = []
    rows << ['Javascript:Beginners','Feb 19th','Feb 28th', '$20,000']
    rows << ['Javascript:Intermediate','March 1st','March 31st', '$40,000' ]
    rows << ['Javascript:Advanced', "April 1st", "April 30th", '$80,000']
    table = Terminal::Table.new :title =>"IOC", :headings => ['Course:','Start Date:','End Date:','Price:'], :rows => rows, :style => {:width => 80}
    puts table
    end

end