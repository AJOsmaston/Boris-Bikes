require 'docking_station'

describe DockingStation do 
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
      expect(bike).to be_working
    end

  it { is_expected.to respond_to(:dock).with(1).argument }
  
  it 'returns a docked bike' do
    bike = Bike.new
     expect(subject.dock(bike)).to(eq(bike))
  end

  it 'throws an error if asked to release a bike from an empty docking station' do
    station = DockingStation.new
    expect{station.release_bike}.to raise_error "There are no bikes to release!"
  end
end 
  