require_relative '../lib/secret_diary'

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
      diary.write('hello!') # why do we need this line of code instead of just one above?
    end
  end

  context "when unlocked" do
    it 'gets read' do
      diary = instance_double('SecretDiary')
      allow(diary).to receive(:unlock) # is there a way to control the variable 'unlocked' for the test?
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
