#assigment 5


stud=[{name:"Aman", marks:78},
            {name:"Riya", marks:92},
        {name:"karan", marks: 46}]

stud.each do |stu|
  puts "#{stu[:name]} - #{stu[:marks]}"
end


names = stud.map { |stu| stu[:name] }
puts names

passed_students = stud.select { |stu| stu[:marks] >= 35 }

passed_students.each do |stu|
  puts "Passed student: #{stu[:name]}"
end


top_grade_student = stud.find { |stu| stu[:marks] >= 85 }

if top_grade_student
  puts "First Grade-A student: #{top_grade_student[:name]}"
end


passed_count = stud.count { |stu| stu[:marks] >= 35 }
puts "Number of passed students: #{passed_count}"


total_marks = stud.reduce(0) do |total, stu|
  total + stu[:marks]
end

puts "Total marks: #{total_marks}"
        