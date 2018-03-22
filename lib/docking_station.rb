require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize()
    @bikes = Array.new 
  end 

  def dock(bike)
    if @bikes.length > 19
      fail "Dock is full of bikes!"
    end
    @bikes << bike
  end

# How we passed section 12:
  def release_bike()
    if @bikes.empty?
      fail "There's no bike docked to release!"
    end
    @bikes.pop()
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
