require 'dependency_injection'

describe Greeter do
  describe '#greet' do
    it 'prints a message and a smiley' do
      smiley_double = double :smily, get: ":D"
      greeter = Greeter.new(smiley_double)
      expect(greeter.greet).to eq "Hello :D"
    end
  end
end

describe Smiley do
  it "returns a Smiley" do
    smiley = Smiley.new
    expect(smiley.get).to eq ":)"
  end
end

describe CarFactory do
  describe "#make_a_car" do
    it "makes a car" do
      car_double = double :car
      car_class_double = double :car_class, new: car_double

      car_factory = CarFactory.new(car_class_double)

      expect(car_double).to receive(:drive_away)
      car_factory.make_a_car
    end
  end
end
