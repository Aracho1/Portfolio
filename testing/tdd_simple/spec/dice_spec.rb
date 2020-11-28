require 'dice'

describe Dice do
  subject(:dice) { described_class.new }
  it {is_expected to be_instance_of(Dice)}
  it 'roll a dice' do
    expect(dice).to respond_to(:roll)
  end

  describe '#roll'do
    it 'should give a random number between 1 and 6' do
      expect(dice.roll).to be_between(1,6)
    end


    it 'should be able to roll multiple dices' do
      allow(dice).to receive(:roll).and_return("3,4,5")
      expect(dice.roll(3)).to eq ("3,4,5")
    end
  end
end
