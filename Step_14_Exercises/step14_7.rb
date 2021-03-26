@students = []
require "csv"

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    print_student_list
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end

def input_students
  puts "Please enter the names of students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  cohort = "november"
  while !name.empty? do
    add_to_students(name, cohort)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def add_to_students(name, cohort)
  @students << {name: name, cohort: cohort}
end

def print_student_list
  puts "The students of Villains Academy"
  puts "----------------"
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  puts "Filename?"
  filename = STDIN.gets.chomp
  file = CSV.open(filename, "w") do |csv|
    @students.each do |student|
    csv << [student[:name], student[:cohort]]
    end
  end
end

def load_students
  puts "Filename?"
  filename = STDIN.gets.chomp
  if File.exists?(filename)
    file = CSV.foreach(filename) do |row|
      name, cohort = row[0], row[1]
      add_to_students(name, cohort)
      end
      puts "Loaded #{@students.count} from #{filename}"
    else 
      puts "Sorry, #{filename} doesn't exist."
  end
end


interactive_menu