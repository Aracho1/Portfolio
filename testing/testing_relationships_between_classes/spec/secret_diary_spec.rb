require_relative '../lib/secret_diary'

RSpec.describe SecretDiary do
  let(:diary) { double }
  let(:secret_diary) { SecretDiary.new(diary) }
  context "when locked" do
    it 'refuses to be read' do
      secret_diary.lock
      expect(secret_diary.read).to eq "Go away!"
    end

    it 'refuses to be written' do
      secret_diary.lock
      expect(secret_diary.write(diary)).to eq "Go away!"
    end
  end

  context "when unlocked" do
    it 'gets read' do
      secret_diary.unlock
      allow(diary).to receive(:read).and_return("hello, I'm your diary!")
      expect(secret_diary.read).to eq "hello, I'm your diary!"
    end

    it 'gets written' do
      secret_diary.unlock
      allow(diary).to receive(:write).with("new diary entry")
      expect(secret_diary.write("new diary entry")).to be nil
    end
  end
end
