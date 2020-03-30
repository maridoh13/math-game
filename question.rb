class Question
  attr_reader :answer

  def initialize
    numbers = (1..20).to_a
    @num1 = numbers.sample
    @num2 = numbers.sample
    @answer = (@num1 + @num2).to_s
    
  end
  
  def to_s
    return "How much is #{@num1} + #{@num2}?"
  end
  
    
end