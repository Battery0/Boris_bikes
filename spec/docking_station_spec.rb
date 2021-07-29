require './lib/docking_station.rb'

describe DockingStation do
  # subject(:subject) { described_class.new }
  
  it { expect(subject).to respond_to(:release_bike) }

  it 'when a bike is released it works' do
    bike = subject.dock(Bike.new)
    expect(subject.release_bike).to be_working
  end

  it 'it gets a bike' do
    bike = subject.dock(Bike.new)
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'docks a bike' do
    bike = subject.dock(Bike.new)
    expect(subject.bikes.include?(bike)).to eq(true)
  end

  it 'raises error if no bikes are available' do
    expect { subject.release_bike }.to raise_error("No bikes are available")
  end
  
  it 'raises an error if dock is full' do
    subject.dock(Bike.new)
    expect { subject.dock(Bike.new) }.to raise_error("bike docking station is full")
  end
end