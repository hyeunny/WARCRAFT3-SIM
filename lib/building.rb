class Building
  attr_accessor :health_points

  def initialize
    @health_points = 500
  end

  def damage(attacker)
    if attacker.instance_of? Footman
      self.health_points -= (attacker.attack_power / 2).ceil
    elsif attacker.instance_of? SiegeEngine
      self.health_points -= (attacker.attack_power * 2)
    else
      #binding.pry
      self.health_points -= attacker.attack_power
    end
  end

  def dead?
    self.health_points <= 0
  end
end