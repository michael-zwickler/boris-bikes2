require_relative "bike"

class DockingStation
  attr_reader :bike
  def release_bike
    fail "No bikes left" unless @bike 
    @bike
  end

  def dock(bike)
    fail 'No space left' if @bike
    @bike = bike
  end

  def empty?
  end
  
end