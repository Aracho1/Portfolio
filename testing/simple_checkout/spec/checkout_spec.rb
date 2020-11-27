require 'checkout'

describe Supermarket do
  it 'shows the price of the item' do
    expect(subject.price("apple")).to eq(1.20)
  end

  it 'stores the item in the scan array' do
    expect{ subject.scan("apple") }.to change { subject.basket }
  end

  it 'stores the item in the scan array' do
    expect{ subject.scan("oranges") }.to change { subject.basket }
  end


  it "returns 'item not available' when an invalid item is scanned" do
    expect(subject.scan("pineapple")).to eq("item not available for scan.")
  end

  it 'shows the total price all scanned items' do
    subject.scan("apple")
    subject.scan("oranges")
    expect(subject.basket_total).to eq(4.4)
  end

  it 'shows the formatted price of each item in the basket' do
    subject.scan("apple")
    subject.scan("oranges")
    expect{subject.receipt}.to output("Item: apple, price: £1.20\nItem: oranges, price: £3.20\n").to_stdout
  end
end
