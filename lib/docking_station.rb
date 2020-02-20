require_relative 'bike'

class DockingStation
  attr_reader :bike

  # def initialize
  #   #@bikes = Array.new
  #   @bike
  # end

  def release_bike
    # should fail if no bikes are available
    fail "Error: there are no bikes available" unless @bike
    @bike
  end

  def dock(bike)
    #@bikes.push(bike)
    @bike = bike
  end


end
