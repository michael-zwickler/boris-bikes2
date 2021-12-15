require_relative "bike"

class DockingStation
  attr_reader :bike
  def release_bike
    @bike
    end
  end

  def dock(bike)
    @bike = bike
  end

  def empty?
  end

end