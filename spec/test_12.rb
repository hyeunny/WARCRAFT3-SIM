require_relative 'spec_helper'

describe Unit do
  before :each do
    @footman = Footman.new
  end

  describe "#dead?" do
    it "returns true when health points less than or equal to 0" do
      @footman.health_points = 0
      expect(@footman.dead?).to eq(true)
    end

    it "returns false when health points is greater than 0" do
      @footman.health_points = 1
      expect(@footman.dead?).to eq(false)
    end

  end
end