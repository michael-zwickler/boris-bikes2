require_relative "bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes left" if @bikes.length == 0 
    @bikes[0]
  end

  def dock(bike)
    fail 'No space left' if @bikes.length >= 20
    @bikes << bike
    return bike
  end

  def empty?
  end
  
end