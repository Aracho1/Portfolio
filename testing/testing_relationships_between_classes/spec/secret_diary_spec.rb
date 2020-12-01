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
      # shouldn't I make the test to return "Go away!"?
    end

    it 'refuses to be written' do
      diary = double("my secret diary")
      allow(diary).to receive(:lock)
      expect(diary).not_to receive(:write)
      # shouldn't I make the test to return "Go away!"?
    end
  end

  context "when unlocked" do
    it 'gets read' do
      diary = double("my secret diary")
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:read)
      diary.read # why is this line needed to pass the test?
      # why does this return nil and not "my secret diary"?
      # what can I do to make this return the diary string?
    end

    it 'gets written' do
      diary = double("my secret diary")
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:write)
      diary.write("my new diary") # why is this line needed to pass the test?
    end
  end
end
