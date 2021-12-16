require "docking_station"

RSpec.describe DockingStation do
  
  describe '#release_bike' do
    context 'responds' do
      it { is_expected.to respond_to :release_bike }
    end
    context 'valid request, bike available' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
    end
    context 'releases a bike that is working' do
      it "bike is working" do
        subject.dock(Bike.new)
        bike = subject.release_bike
        expect(bike).to be_working
      end
    end
    context 'invalid request, no bikes available' do 
      it "raises error when release_bike from empty station" do
        expect{subject.release_bike}.to raise_error("No bikes left")
      end
    end
  end

  describe '#dock' do
    context 'valid request, capacity not at limit' do
      it "docks a bike" do
        bike = Bike.new
        expect(subject.dock(bike)[0]).to eq bike
      end
    end
    context 'valid request, capacity not at limit' do
      it "returns docked bikes" do
        bike = Bike.new
        expect(subject.dock(bike)[0]).to eq bike
      end
    end
    context 'invalid request, capacity at limit' do
      it 'doesnt exceed dockingstation capacity' do
        DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
        expect{subject.dock(Bike.new)}.to raise_error('No space left')
      end
    end
  end
end