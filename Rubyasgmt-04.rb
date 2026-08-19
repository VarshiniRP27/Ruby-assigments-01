#Assigment 4

stud=[{name:"Aman", marks:78},
            {name:"Riya", marks:92},
        {name:"karan", marks: 46}]
def calculate_grade(marks)
    if marks>=85
        "grade-A"
    elsif marks.between?(65,84)
        "grade-B"
    elsif marks.between?(35,64)
        "grade-C"
    else
        "Fail"
    end
end

stud.each do |stu|
    grade = calculate_grade(stu[:marks])
    puts "#{stu[:name]}: #{grade}"
end

def calculate_average(stud)
    total_marks=stud.sum{ |stu| stu[:marks]} 
    total_marks.to_f / stud.length
end
avg_marks= calculate_average(stud)
    puts "the avg is #{avg_marks}"




def find_top_student(stud)
    highest_score=stud.max_by{|stud| stud[:marks]}
end
top=find_top_student(stud)
puts "#{top[:name]}"

def passed_students(marks)
    stud.each do |stud|
        if marks>=35
            puts "passed students are #{stud[:name]}"
        end
    end
end

def passed_students(stud)
  stud.select { |stu| stu[:marks] >= 35 }
end

stu_names = passed_students(stud)

stu_names.each do |stu|
  puts "Passed student: #{stu[:name]}"
end

