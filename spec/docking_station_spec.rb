require 'docking_station'

describe DockingStation do

  subject(:docking_station) { DockingStation.new }

  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it 'releases a bike' do
    bike = docking_station.release_bike
    expect(bike).to be_working
  end

end