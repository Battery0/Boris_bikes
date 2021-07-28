require 'docking_station'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  it { expect(docking_station).to respond_to(:release_bike) }

  it 'when a bike is released it works' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

  it 'returns docked bikes' do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq docking_station.bikes
  end

  it 'docks something' do
    bike = Bike.new
    expect(docking_station.dock(bike)).to eq bike
  end

  it 'raises error if no bikes are available' do
    expect { docking_station.release_bike }.to raise_error("errrorororor")
  end
end
