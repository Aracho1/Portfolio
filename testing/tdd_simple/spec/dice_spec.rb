require 'dice'

describe Dice do
  subject(:dice) { described_class.new }
  it 'roll a dice' do
    expect(dice).to respond_to(:roll)
  end

  describe '#roll'do
    it 'should give a random number between 1 and 6' do
      allow(dice).to receive(:roll).and_return(6)
      expect(dice.roll).to eq 6
    end

    it 'should not give a number other than between 1 and 6' do
      expect(dice.roll).not_to eq 7
      expect(dice.roll).not_to eq 0
    end

    it 'should be able to roll multiple dices' do
      allow(dice).to receive(:roll).and_return("3,4,5")
      expect(dice.roll(3)).to eq ("3,4,5")
    end
  end
end
