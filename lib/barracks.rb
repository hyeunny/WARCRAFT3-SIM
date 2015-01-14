class Barracks < Building
  attr_accessor :gold, :food, :lumber

  def initialize
    super
    @gold = 1000
    @food = 80
    @lumber = 500
  end

  def train_footman
    return nil if can_train_footman? == false
    self.gold -= 135
    self.food -= 2
    Footman.new
  end

  def can_train_footman?
    self.gold >= 135 && self.food >= 2
  end

  def train_peasant
    return nil if can_train_peasant? == false
    self.gold -= 90
    self.food -= 5
    Peasant.new
  end

  def can_train_peasant?
    self.gold >= 90 && self.food >= 5
  end

  def train_siege_engine
    return nil if can_train_siege_engine? == false
    self.gold -= 200
    self.food -= 3
    self.lumber -= 60
  end

  def can_train_siege_engine?
    self.gold >= 200 && self.food >= 3 && self.lumber >= 60
  end
end
