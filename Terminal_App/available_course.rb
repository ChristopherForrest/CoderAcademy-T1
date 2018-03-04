#gem install terminal-table - Possibly install gems for users for compatability
require'terminal-table'
require_relative'subject'

module Available_Courses
    module_function
def options
    
    rows = []
    rows << [1, "HTML"]
    rows << [2, "CSS"]
    rows << [3, "Javascript"]
    rows << [4, "Ruby"]
    rows << [5, "Python"]
    rows << [6, "C#"]
    rows << [" ", " "]
    rows << [7,"Invoice"]
    rows << [8, "Quit"]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Option:','Subject:'], :rows => rows, :style => {:width => 80}

    puts table #Creates table using Gem (Terminal-Table), Prints table of available languages to learn
    puts "\n"
    puts "Select option by number".center(80).yellow
    puts "\n"

   Subject.option # Directs user to course level / availability and prints options


end
end