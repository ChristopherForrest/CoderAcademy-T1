#gem install terminal-table
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
    rows << [" ", " "]
    rows << [6, "Quit"]
    table = Terminal::Table.new :title =>"IOC", :headings => ['Option:','Subject:'], :rows => rows, :style => {:width => 80}

    puts table
    puts "\n"
    puts "Select option by number".center(80)
    puts "\n"

   Subject.option


end
end