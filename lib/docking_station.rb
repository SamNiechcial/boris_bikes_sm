require_relative 'bike'

class DockingStation
  attr_accessor :bikes

  def initialize()
    @bikes = Array.new
  end

  def dock(bike)
    full? ? (fail "Dock is full of bikes!") : @bikes << bike
  end

# How we passed section 12:
  def release_bike()
    empty?  ? (fail "There's no bike docked to release!") : @bikes.pop()
  end

  private

  def full?
    @bikes.length > 19
  end

  def empty?
    @bikes.empty?
  end

end

# # Actual Section 12
# def release_bike
#   fail "There's no bike docked to release!" unless @bike
#   @bike
# end

# bike = Bike.new
# bike = DockingStation.dock(bike)

# attr_reader :bike_docked
