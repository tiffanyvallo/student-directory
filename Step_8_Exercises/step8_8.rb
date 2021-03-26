def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return four times"
  students = []
  name = gets.chomp
  puts "Cohort?"
  cohort = gets.chomp
  while !name.empty? && !cohort.empty? do
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    puts "Cohort?"
    cohort = gets.chomp
  end
  students
end

def cohort_split(students)
  per_cohort = {}
  students.each do |student|
    cohort = student[:cohort]
    if per_cohort[cohort] == nil
      per_cohort[cohort] = []
    end
      per_cohort[cohort].push(student[:name])
    end
  per_cohort.each do |k, v| puts k 
                            puts v.flatten
  end
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
cohort_split(students)
print_footer(students)
