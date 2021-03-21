system("clear")
x = 20
y = 3
a = x + y
s = x - y
su = x * y
ad = x / y
mo = x % y
ss = x ** y
puts "All Arithmetic Operator : #{a} #{s} #{su} #{ad} #{mo} #{ss}"

if x == y
    puts "x equal to y"
end

if x != y
    puts "x is not equal to y"
end

if x > y 
    puts "x is grater than y"
end

if x < y
    puts "x is less than y"
end

if x >= y
    puts "x is greater than and equal to y"
end

if x <= y
   puts "x is less than and equal to y" 
end

if x <=> y
    puts "I'm not understand it operator <=>"
end

if (1...10) === y
    puts "Has a value #{y} of 1...10"
end

if 1 .eql? 1.0
    puts "x is equal to y"
end

if 1 .eql? "1"
    puts "1 is number equal to 1 is string"
end

if 1 == 1.0
    puts "1 is equal to 1.0, this is using operator 1==1.0"
end

if 1 == "1"
    puts "1 is string, this is using operator 1==1.0"
end

puts x = y
puts x += y
puts x -= y
puts x *= y
puts x /= y
puts x %= y
puts y **= y
a, b, c = 10, 20, 30

puts a + b + c