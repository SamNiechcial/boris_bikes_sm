class DockingStation

  def release_bike
    released_bike = Bike.new
  end

  def return_bike
    accepted_bike = @bike
  end

end

class Bike
@bike = Bike.new
  def working?
    return true
  end

end
