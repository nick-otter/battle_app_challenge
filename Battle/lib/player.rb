class Player

  DEFAULT_HP = 100

  attr_reader :name, :hp

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hp = hit_points
  end

  def receive_damage(amount = 10)
    @hp -= amount
  end
end