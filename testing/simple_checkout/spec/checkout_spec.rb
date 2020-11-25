require 'checkout'

Describe Item do
  subject(:apple) {Item.new}
  describe "#price" do
    it 'prints out the price'
    expect(apple.price).to eq(3)
  end
end
