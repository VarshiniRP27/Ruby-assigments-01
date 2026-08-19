puts "Student Manager"

students=[]
 def add_student(students)
    puts "Enter the name"
    name=gets.chomp
    age = nil
    loop do
        puts "Enter the age"
        age = gets.chomp

    if age.match?(/\A\d+\z/) && age.to_i > 0
        age = age.to_i
        break
    end

  puts "Enter a valid positive number for age."
end
    
    puts "Enter the course"
    course=gets.chomp
    marks=nil
    loop do
        puts "Enter the marks"
        marks = gets.chomp

  if marks.match?(/\A\d+\z/) && marks.to_i >= 0
    marks = marks.to_i
    break
  end

  puts "Enter valid marks using numbers only."
end
 
 student={
    name: name,
    age: age,
    course: course,
    marks: marks
 }
 students << student
puts "Student addedd Succesfully"
end


def list_students(students)
    if students.empty?
        puts "No students added"
    else
        students.each {|student| puts student[:name]}
    end
end

def find_student(students)
    students.find {|student| student[:age]>=25}
    
end


def show_top_student(student)
    student.max_by {|student| student[:marks]}
end

def show_Average(student)
    total_marks=student.sum {|student| student[:marks]}
    avg_marks=total_marks.to_f/student.length
end



loop do
    puts "\n"
    puts "-----------------------------------------------"
    puts "Select the options"

    puts "1.Add Students
        2.List students
        3.Find Students
        4.Show Top Students
        5.Show Average
        6.Exit
        "
    puts "Enter the number to choose options"
    options=gets.to_i


    case options
    when 1 then add_student(students)
    when 2 then puts list_students(students)
    
    when 3 then puts find_student(students)
    when 4 then puts show_top_student(students)
    when 5 then puts show_Average(students)
    when 6 then puts "exited --Thankyou "
        break
    else
        puts "Invalid option"
    end
end