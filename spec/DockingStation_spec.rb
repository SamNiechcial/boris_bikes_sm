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

  # it "has no bike docked" do
  #   station = DockingStation.new
  #   expect(station.bike_docked).to eq(false)
  # end

  # it "respond to return_bike" do
  #   expect(subject).to respond_to :return_bike
  # end

### Above is old version of test below

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike_docked) }

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
  end

end

# Setup Execute Verify
