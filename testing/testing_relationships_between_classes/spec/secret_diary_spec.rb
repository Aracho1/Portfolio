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
      diary = instance_double('SecretDiary') # do we have to have instance double?
      expect(diary).to receive(:read).and_return("Go away!")
      diary.read
      # why is the expect statement needed before calling on the read method?
    end

    it 'refuses to be written' do
      diary = instance_double('SecretDiary')
      expect(diary).to receive(:write).and_return("Go away!")
      diary.write('hello!')
    end
  end

  context "when unlocked" do
    it 'gets read' do
      diary = instance_double('SecretDiary')
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:read).and_return("Hello!") # how does the test match the return statement?
      diary.read # why is this line needed to pass the test?
    end

    it 'gets written' do
      diary = instance_double('SecretDiary')
      allow(diary).to receive(:unlock)
      expect(diary).to receive(:write).with("new diary entry")
      diary.write("new diary entry") # why is this line needed to pass the test?
    end
  end
end
