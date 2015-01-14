require_relative 'spec_helper'

describe Unit do
  before :each do
    @footman = Footman.new
    @enemy = Footman.new
    @enemy.health_points = 0
    # @enemy2 = Footman.new
  end

  describe "#attack!" do
    it "cannot attack if unit is dead" do
      expect(@enemy.attack!(@footman)).to eq(nil)
    end
    it "live unit cannot attack dead units" do
      expect(@footman.attack!(@enemy)).to eq(nil)
    end

  end


end