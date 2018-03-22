require 'docking_station'

describe DockingStation do
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  it "returns docked bikes" do
    bike = Bike.new
    # subject.dock(bike)
    expect(subject.dock(bike)).to eq [bike]
  end

  it "Raises error on releasing imaginary bike" do
    station = DockingStation.new
    bike = Bike.new
    station.dock(bike)
    released_bike = station.release_bike
    expect { station.release_bike }.to raise_error(RuntimeError, "There's no bike docked to release!")
  end

  it "Raises error on trying to dock bike with full dock" do
    docking_station = DockingStation.new
    expect { 21.times { docking_station.dock(Bike.new) } }.to raise_error(RuntimeError, "Dock is full of bikes!")
  end

  it "Allows user to dock up to 20 bikes" do 
    docking_station = DockingStation.new
    expect { 20.times { docking_station.dock Bike.new } }.not_to raise_error
  end 
end



# Setup Execute Verify

# it 'actually releases a bike' do
#   station = DockingStation.new
#   released_bike = station.release_bike
#   expect released_bike == Bike
# end

# it "has no bike docked" do
#   station = DockingStation.new
#   expect(station.bike_docked).to eq(false)
# end

# describe "DockingStation" do
#  it "takes a request from a person to release a bike" do
#    expect(DockingStation.accept_request).to eq true
#  end

#   it "releases the bike if it is working" do
#     expect(DockingStation.release_bike).to eq true
#   end
# end

# it "respond to return_bike" do
#   expect(subject).to respond_to :return_bike
# end
