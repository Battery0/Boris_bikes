require './lib/bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes
  end

  def release_bike
    raise "No bikes are available" unless @bikes
    @bikes
  end

  def dock(bike)
    @bikes = bike
  end
end
