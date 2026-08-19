puts "enter your name"
name=gets.chomp
puts "Enter your Age"
age=gets.chomp
puts "enter your college"
college=gets.chomp
puts  "enter your Coursd"
course=gets.chomp
puts "enter  your marks"
marks=gets.to_i
puts "Hi #{name} your marks is #{marks} "
if marks<35
    puts "Fail"
else 
    if marks>=85
        puts "Pass- A"
    elsif marks>=75 && marks<85
        puts "Pass- B"
    elsif marks>=55 && marks<=35
        puts "pass - c"
    else
        puts "fail"
    end
end
