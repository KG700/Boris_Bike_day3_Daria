require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def dock(bike)
    #@bikes.push(bike)
    fail "Sorry, no spaces available" if @bikes.length > 19
    @bikes.push(bike)
  end

  def release_bike
    # should fail if no bikes are available
    fail "Error: there are no bikes available" if @bikes.length < 1
    @bikes.pop
  end

end
