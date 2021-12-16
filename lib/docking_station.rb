require_relative "bike"

class DockingStation
  # attr_reader :bikes
  DEFAULT_CAPACITY = 20

  def initialize
    @bikes = []
  end

  def release_bike
    fail "No bikes left" if self.empty? 
    @bikes.pop
  end

  def dock(bike)
    fail 'No space left' if self.full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end
  
  def empty?
    @bikes.length == 0
  end
  
end
