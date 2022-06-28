def exponent(base_number, power_number)
    result = 1

    power_number.times do
        result = result * base_number
    end
    return result

end

def get_num
    puts "Provide a number, please: "

    begin
        num = gets.chomp()
        num = Integer(num).abs()      #it's absolute to rescue an error with negative power number
    rescue ArgumentError
        puts "Please enter an integer number:"
        retry
    end
    
    return num
end

base_num = get_num
power_num = get_num

puts "#{base_num} to the #{power_num} power is #{exponent(base_num, power_num)}."