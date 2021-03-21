system("clear")
arr = ['Mich',20,'Siem Reap',2001,6]

arr.each do |value| 
    if value.is_a? Numeric
        puts "It number"
    else
        puts "It String"
    end
end