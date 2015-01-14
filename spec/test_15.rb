require_relative 'spec_helper'

describe SiegeEngine do
  before :each do
    @siege_engine = SiegeEngine.new
    @barracks = Barracks.new
    @footman = Footman.new
    @siege_engine2 = SiegeEngine.new
  end

describe "#new" do
  it "initializes a SiegeEngine with 40 AP and 200 HP" do
    expect(@siege_engine.health_points).to eq(200)
    expect(@siege_engine.attack_power).to eq(40)
  end
end

describe "#attack!" do
  it "cannot attack LightUnits" do
    expect(@siege_engine.attack!(@footman)).to eq(nil)
  end

  it "deals double damage to buildings" do
    @siege_engine.attack!(@barracks)
    expect(@barracks.health_points).to eq(420)
  end

  it "can attack Siege Units" do
    @siege_engine.attack!(@siege_engine2)
    expect(@siege_engine2.health_points).to eq(160)
  end
end


end

  