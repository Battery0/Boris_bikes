require 'docking_station'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  it { expect(docking_station).to respond_to(:release_bike) }

  it 'when a bike is released it works' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end
end
