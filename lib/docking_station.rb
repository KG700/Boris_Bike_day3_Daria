require_relative 'bike'

class DockingStation
  attr_reader :bikes, :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = Array.new
    @capacity = capacity
  end

  def dock(bike)
    #@bikes.push(bike)
    fail "Sorry, no spaces available" if full?
    @bikes.push(bike)
  end

  def release_bike
    # should fail if no bikes are available
    fail "Error: there are no bikes available" if empty?
    @bikes.pop
  end

  private
  def empty?
    @bikes.length < 1
  end

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

end
