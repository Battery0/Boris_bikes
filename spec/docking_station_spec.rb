require 'docking_station'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  it { expect(docking_station).to respond_to(:release_bike) }

  it 'when a bike is released it works' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  it 'when a bike is docked the bike is visable' do
    expect(docking_station.bikes).not_to be_nil
    bike = docking_station.release_bike
    expect(docking_station).to respond_to(:return_bike)
  end

  it { expect(docking_station).to respond_to(:return_bike) }

end
