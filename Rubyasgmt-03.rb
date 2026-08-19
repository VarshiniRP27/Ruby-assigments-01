#  Assigment 3
students=[{name:"Aman", marks:78},
            {name:"Riya", marks:92},
        {name:"karan", marks: 46}]

students.each do |student|
  puts student[:name]
end

highest_score=students.max_by {|student| student[:marks]} 
puts "The Highest scrorer is #{highest_score[:name] } with the marks #{highest_score[:marks]}"

total_marks=students.sum{ |stu| stu[:marks]} 
avg_marks=total_marks.to_f / students.length

puts "the avg scror of students #{avg_marks}"

students.each do |stu|
    if stu[:marks]>50
        puts "The passed students are #{stu[:name]}"
    else
        puts "The failed studnets are #{stu[:name]}"
    end
end
