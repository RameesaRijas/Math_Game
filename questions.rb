class Questions
attr_reader :number_one, :number_two, :answer
  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @answer = @number_one + @number_two
  end

  def check_answer(number)
    @answer == number
  end
end
