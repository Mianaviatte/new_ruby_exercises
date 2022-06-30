def multiple_generator(m)
    lambda do |n|
        n*m
    end
end

# setting m accordingly in doubler and tripler
doubler = multiple_generator(2)
tripler = multiple_generator(3)

# testing closure with n
puts doubler.(50)
puts tripler.(70)