require_relative '../lib/secret_diary'

### WARNING ###
# For the purposes of this exercise, you are testing after
# the code has been written. This means your tests are prone
# to false positives!
#
# Make sure your tests work by deleting the bodies of the
# methods in `secret_diary.rb`, like this:
#
# ```ruby
# def write(new_message)
# end
# ```
#
# If they fail, then you know your tests are working
# as expected.
### WARNING ###

RSpec.describe SecretDiary do
  context "when locked" do
    it 'refuses to be read' do
      diary = double("diary")
      allow(diary).to receive(:lock)
      expect(diary).not_to receive(:read)
    end

    it 'refuses to be written' do
      diary = double("my secret diary")
      allow(diary).to receive(:lock)
      expect(diary).not_to receive(:write)
    end
  end

  context "when unlocked" do
    it 'gets read' do
      diary = double("my secret diary")
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:read)
      diary.read
    end

    it 'gets written' do
      diary = double("my secret diary")
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:write)
      diary.write("my new diary")
    end
  end
end
