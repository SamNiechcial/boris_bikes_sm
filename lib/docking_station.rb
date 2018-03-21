class DockingStation
  attr_reader :bike_docked

  def dock(bike)
    @bike_docked = bike
  end

  def release_bike
    Bike.new
  end

end

# bike = Bike.new
# bike = DockingStation.dock(bike)
# attr_reader :bike_docked
