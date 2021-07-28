require './lib/bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes
  end

  def release_bike
    raise "errrorororor" unless @bikes
    @bikes
  end

  def dock(bike)
    @bikes = bike
  end
end
