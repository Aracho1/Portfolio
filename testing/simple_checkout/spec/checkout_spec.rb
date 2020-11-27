require 'checkout'

describe Supermarket do
  describe "#price(item)" do
    it 'shows the price of the item' do
      expect(subject.price("apple")).to eq(1.20)
    end
  end

  describe "#scan(item)" do
    it 'stores the item in the scan array' do
      expect{ subject.scan("apple") }.to change { subject.basket }
    end

    it "returns 'item not available' when an invalid item is scanned" do
      expect(subject.scan("pineapple")).to eq("item not available for scan.")
    end
  end

  describe "#baset_total" do
    it 'shows the total price all scanned items' do
      expect(subject.basket_total).to eq(3.2)
    end
  end

  describe "#receipt" do
    it 'shows the formatted price of each item in the basket' do
      expect(subject.receipt).to eq("Item: juice, price: £2.40\nItem: gum, price: £0.80")
    end
  end
end
