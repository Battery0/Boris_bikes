require 'docking_station'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  it { expect(docking_station).to respond_to(:release_bike) }
end
