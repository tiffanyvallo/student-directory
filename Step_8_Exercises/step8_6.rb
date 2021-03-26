def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

def print_header_centre
  puts "The students of Villains Academy".center(30)
  puts "-------------".center(20)
end
def print_center(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)".center(10)
  end
end

students = input_students
print_header_centre
print_center(students)
print_footer(students)
