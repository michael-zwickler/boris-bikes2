require "docking_station"

describe DockingStation do
  describe "responds to release_bike" do
    it { is_expected.to respond_to :release_bike }
  end

  it "release_bike creates new Bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end