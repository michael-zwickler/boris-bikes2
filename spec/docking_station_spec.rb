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

  it "bike is working" do
    subject.dock(Bike.new)
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
    expect{subject.release_bike}.to raise_error("No bikes left")
  end

end