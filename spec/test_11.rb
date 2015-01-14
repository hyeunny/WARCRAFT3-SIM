require_relative 'spec_helper'

describe Building do
  before :each do
    @barracks = Barracks.new
    @footman = Footman.new
  end

  #barracks inherits from buildings and has 500 hp
  it "has 500 hp" do
    expect(@barracks.health_points).to eq(500)
  end

  describe "#damage" do
    it "takes 1/2 damage from footman" do
      @barracks.damage(@footman)
      expect(@barracks.health_points).to eq(495)
    end
  end


end