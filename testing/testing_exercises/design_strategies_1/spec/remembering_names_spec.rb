require 'remembering_names'
describe 'remember names' do
  it 'gives us a friendly message' do
    expect(remember('James')).to eq "I will remember James!"
  end
end
