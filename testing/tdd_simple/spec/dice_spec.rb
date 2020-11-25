require 'dice'

describe Dice do
  subject(:dice) { described_class.new }
  it 'roll a dice' do
    expect(dice).to respond_to(:roll)
  end
end
