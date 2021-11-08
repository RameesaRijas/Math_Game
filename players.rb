#player class
# readable name for accessing name
# lives - to change each time when give wrong answers
class Player
  attr_reader :name
  attr_accessor :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lost_lives
    @lives -= 1
  end
end
