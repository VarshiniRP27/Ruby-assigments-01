# ASSIGMENT 2

puts "enter your name"
name=gets.chomp
puts "Enter your Age"
age=gets.to_i
while  age<=0
    puts "Negative age is not accepted,Enter proper age"
    age=gets.to_i
end
puts "enter your college"
college=gets.chomp
puts  "enter your Coursd"
course=gets.chomp
puts "enter  your marks"
marks=gets.to_i
while marks<0 || marks>100
    puts "Marks is not valid"
    puts "enter the valid marks"
    marks= gets.to_i
    puts marks
end
 
    puts "Hi #{name} your marks is #{marks} "
    if marks<35
        puts "Fail"
    else 
        if marks>=85
            puts "Pass- A"
        elsif marks>=75 && marks<85
            puts "Pass- B"
        elsif marks>=55 && marks<=75
            puts "pass - c"
        else
            puts "fail"
        end
    end
