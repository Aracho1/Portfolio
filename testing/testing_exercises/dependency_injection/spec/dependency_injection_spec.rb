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
