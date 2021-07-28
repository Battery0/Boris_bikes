require 'bike'

describe Bike do
  subject(:bike) { described_class.new }
  it { expect(bike).to respond_to(:working?) }
end