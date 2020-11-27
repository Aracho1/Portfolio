class Supermarket
  attr_accessor :shelf
  attr_reader :basket

  def initialize
    @shelf = {"apple" => 1.20, "banana" => 0.8, "oranges" => 3.2, "chocolate" => 2.4}
    @basket = [{"juice" => 2.4}, {"gum" => 0.8}]
  end

  # show price of an item
  def price(item)
    @shelf.select{ |name,price| name == item }.values[0]
  end

  # scan an item and put in in the basket
  def scan(item)
    if !shelf.include?(item)
      "item not available for scan."
    else
      @basket << @shelf.select{ |name,price| name == item }
    end
  end

  # show the total price of all items in the basket
  def basket_total
    sum = @basket.sum{ |item| item.values[0] }
  end

  # show basket items and prices in formatted way
  def receipt
    @basket.each do |item|
      item.each do |name, price|
        puts "Item: #{name}, price: £#{ "%.2f" % item.values[0]}"
      end
    end
  end
end
