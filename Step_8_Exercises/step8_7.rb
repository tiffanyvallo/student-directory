def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return four times"
  students = []
  months = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  name = gets.chomp
  puts "Cohort?"
  cohort = gets.chomp
  loop do
    if name.empty? 
      break
    elsif !name.empty? &&  months.include?(cohort)
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    puts "Cohort?"
    cohort = gets.chomp
    else !name.empty? && !months.include?(cohort)
    cohort = "default"
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    puts "Cohort?"
    cohort = gets.chomp
    end
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

students = input_students
print_header
print(students)
print_footer(students)
