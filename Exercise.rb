classroom = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

def seats_available (classroom)
  classroom.each_with_index do |index, row|
    index.each_with_index do |seat,available|
      if seat == nil
        puts "Row #{row + 1} seat #{available + 1 } is available."
        puts "Do you want to sit there? (y/n) "
          take_seat = gets.chomp
        if take_seat == 'y'
          puts "Please provide your name."
          name = gets.chomp
          classroom[row][available] = name
          p classroom
          exit
        else
          next
        end
      end
    end
  end
end

seats_available(classroom)
