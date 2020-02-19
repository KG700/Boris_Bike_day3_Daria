require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

    describe '#release_bike' do
      it 'releases_bikes' do
        subject.dock(Bike.new)
        expect(subject.release_bike).to be_working
      end
    end

    describe '#dock' do
      it do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
      end
    end

  it do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "Raise error:" do
    bike = DockingStation.new
    expect {bike.release_bike}.to raise_error
  end
  #it (subject.bike == nil) { fail "no bikes available"}


end
