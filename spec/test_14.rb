require_relative 'spec_helper'

describe Barracks do
  before :each do
    @barracks = Barracks.new
  end

  describe "#new" do
    it "initiates with 500 lumber" do
      expect(@barracks.lumber).to eq(500)
    end
  end
end