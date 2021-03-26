def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice per question"
  students = []
  name = gets.chomp
    puts "Country of birth?"
    country = gets.chomp
    puts "Hobbies?"
    hobbies = gets.chomp
    puts "Height?"
    height = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, country: country, hobbies: hobbies, height: height}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    puts "Country of birth?"
    country = gets.chomp
    puts "Hobbies?"
    hobbies = gets.chomp
    puts "Height?"
    height = gets.chomp
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

def extra_info(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort, from #{student[:country]}, likes #{student[:hobbies]}, height of #{student[:height]})"
  end
end

students = input_students
print_header
extra_info(students)
print_footer(students)
