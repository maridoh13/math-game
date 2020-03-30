class Player
  attr_reader :name
  attr_accessor :points

  def initialize(name)
    @name = name
    @points = 3
  end

  def dead?
    if @points == 0
      return true
    end
  end

end