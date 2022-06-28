class Quiz
    attr_accessor :prompt, :answer
    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end
end

p1 = "Which term is used to describe embedding code in strings? \n1. internationalization \n2. concatenation \n3. aggregation \n4. interpolation"  
# 4. interpolation

p2 = "What is the difference between Rubocop and RSpec? \n1. First one - is a code coverage solution, second one - is a testing framework \n2. First one - is a tool for unit tests, second one - is a tool for integration tests \n3. First one - is a code linter, second one - is a testing framework \n4. First one - is a code linter, second one - is a tool for unit tests only"
# 3. First one - is a code linter, second one - is a testing framework

p3 = "What color can't be daisy? \n1. black \n2. red or pink \n3. blue \n4. white " 
# 1. black

my_questions = [
    Quiz.new(p1, "4"),
    Quiz.new(p2, "3"),
    Quiz.new(p3, "1")
]

def run_test(questions)
    answer = ""
    score = 0

    for question in questions
        puts question.prompt
        answer = gets.chomp()

        if answer == question.answer
            score += 1
        end
    end

    puts ("You've got #{score.to_s} out of #{questions.length().to_s} questions in our quiz!")

end

run_test(my_questions)