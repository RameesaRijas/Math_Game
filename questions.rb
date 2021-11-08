class Questions
attr_reader :number_one, :number_two, :answer
  def initialize
    @number_one = rand(1..50)
    @number_two = rand(1..50)
    @answer = @number_one + @number_two
  end

  def question_maker(player)
    puts "#{player.name} > What does #{number_one} plus #{number_two} equal?"
  end

  def check_answer(number)
    @answer == number
  end
end
