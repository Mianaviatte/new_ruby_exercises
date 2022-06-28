secret_word = "love"
guess = ""
guess_count = 0
guess_limit = 5
out_of_guesse = false

while guess != secret_word and !out_of_guesse
    if guess_count < guess_limit
        puts "Enter your guess what is the most important for couple?"
        guess = gets.chomp()
        guess_count += 1
    else
        out_of_guesse = true
    end
    
end

if out_of_guesse
    puts "You lost the guessing game!"
else
    puts "Correct! You won!"
end