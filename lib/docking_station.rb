class DockingStation
  attr_accessor :bike

  def dock(bike)
    @bike = bike
  end

# How we passed section 12:
  def release_bike
    if @bike == nil
      fail "There's no bike docked to release!"
    end
    @bike = nil
  end

  # # Actual Section 12
  # def release_bike
  #   fail "There's no bike docked to release!" unless @bike
  #   @bike
  # end
    
end

# bike = Bike.new
# bike = DockingStation.dock(bike)

# attr_reader :bike_docked
