class QuizGame
    def initialize(questions)
        @questions = questions
        @score = 0
    end
    
    def start
        @questions.each do |question|
            question.display
            answer = gets.chomp
            if question.check_answer(answer)
                @score += 1
            end
        end
        finish
    end

    def finish
        puts "You scored #{@score} out of #{@questions.length}."
        
    end
    
    
end