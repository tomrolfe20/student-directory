def input_students
    puts 'Please enter the names of the students'
    puts 'To finish, just hit return twice'

    students = []
    name = gets.chomp

    puts 'Cohort?'
    cohort = gets.chomp

    while !name.empty? do
        students << {name: name, cohort: cohort}
        puts "Now we have #{students.count} students"
        puts 'name?'
        name = gets.chomp
        puts 'cohort?'
        cohort = gets.chomp.to_sym
    end
students
end 

students = [
{name: "Dr. Hannibal Lecter", cohort: :november, hobbbies: :fishing},
{name: "Darth Vader", cohort: :november, hobbbies: :fishing},
{name: "Nurse Ratched", cohort: :november, hobbbies: :fishing},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Joker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november},
]

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
  end
  
  def print(names)
  names.each_with_index do |student, index|
    if student[:name].length < 12
      puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
  end
  
  def print_footer(names)
      puts "Overall, we have #{names.count} great students" 
  end
  
  students = input_students
  print_header
  print(students)
  print_footer(students)