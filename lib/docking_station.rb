require 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = "hello"
  end

  def hello
    puts @bikes
  end

  def release_bike
    Bike.new # this method doesn't yet impact the bikes attribute of a docking_station object
  end

  def dock(bike)
    @bikes = bike
  end
end
