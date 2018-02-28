#gem install terminal-table
require'terminal-table'

module Available_Courses
    module_function
def options

    rows = []
    rows << [1, "HTML"]
    rows << [2, "CSS"]
    rows << [3, "Javascript"]
    table = Terminal::Table.new :headings => ['Word', 'Number'], :rows => rows, :style => {:width => 80}

    puts table

end
end