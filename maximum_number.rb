def maximum(num1, num2, num3)
    if num1 >= num2 and num1 >= num3
     return num1
     
    elsif num2 >= num1 and num2 >= num3 
     return num2
     
    else
     return num3
    end
 end   
 
 def get_num
     puts "Provide a number, please: "
 
     begin
         num = gets.chomp()
         num = Float(num)
     rescue ArgumentError
         print "Please enter an integer number:"
         retry
     end
     
     return num
 end
 
 num1 = get_num
 num2 = get_num
 num3 = get_num
 
 puts "Numbers are #{num1, num2, num3}"
 puts "The maximum is #{maximum(num1, num2, num3)}."