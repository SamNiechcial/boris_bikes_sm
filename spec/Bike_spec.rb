require 'bike'

describe Bike do
  it 'responds to working?' do
    expect(subject).to respond_to :working?
  end

  it "bike responds to working?" do
    bike = Bike.new
    expect(bike).to respond_to :working?
  end

  it "bike returns true if working and false if not" do
    released_bike = Bike.new
    expect (released_bike.working?) == true || (released_bike.working?) == false
  end
end
