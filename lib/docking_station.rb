require './lib/bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = Array.new
  end

  def release_bike
    raise "No bikes are available" unless !@bikes.empty?
    Bike.new
  end

  def dock(bike)
    @bike = bike
    raise "bike docking station is full" unless @bikes.count < 1
    @bikes.push(@bike)
    @bike
  end
end
