require "docking_station"

describe DockingStation do
  
  describe "#release_bike" do
   it "releases a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
    end
  end

  describe "responds to release_bike" do
    it { is_expected.to respond_to :release_bike }
  end

  it "release_bike creates new Bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks something" do
   bike = Bike.new
   expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe "responds to empty?" do
    it { is_expected.to respond_to :empty?}
  end

  it "raises error when release_bike from empty station" do
    subject.empty?
    expect(subject.release_bike).to raise_error
  end

end