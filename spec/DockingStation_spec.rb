require 'docking_station'

# describe "DockingStation" do
#  it "takes a request from a person to release a bike" do
#    expect(DockingStation.accept_request).to eq true
#  end

#   it "releases the bike if it is working" do
#     expect(DockingStation.release_bike).to eq true
#   end
# end

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it 'actually releases a bike' do
    station = DockingStation.new
    released_bike = station.release_bike
    expect released_bike == Bike
  end

  it " bike responds to working?" do
    @bike = Bike.new
    expect(@bike).to respond_to :working?
  end

  it "bike returns true if working and false if not" do
    released_bike = Bike.new
    expect (released_bike.working?) == true || (released_bike.working?) == false
  end

  it "respond to return_bike" do
    expect(subject).to respond_to :return_bike
  end

end

# Setup Execute Verify
