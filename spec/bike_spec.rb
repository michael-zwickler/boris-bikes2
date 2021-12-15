require "bike"
describe Bike do
  describe "responds to working" do
    it {is_expected.to respond_to :working?}
  end
end