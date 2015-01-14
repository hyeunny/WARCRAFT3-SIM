class SiegeEngine < SiegeUnit
  attr_accessor :attack_power, :health_points
  def initialize
    @attack_power = 40
    @health_points = 200
  end

  def attack!(enemy)
    return nil if enemy.is_a? LightUnit
    super(enemy)
  end


end