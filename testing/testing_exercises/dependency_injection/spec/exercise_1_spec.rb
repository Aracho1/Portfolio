require 'exercise_1'

describe Note do
  let(:formatter) { double(:formatter)}
  let(:note) { Note.new("title", "body", formatter)}

  describe "#display" do
    it 'displays the formatted note' do
      allow(formatter).to receive(:format).with(note).and_return("Title: title\nbody")
      expect(note.display).to eq "Title: title\nbody"
    end
  end
end

describe NoteFormatter do
  let(:note) { double(title:"To do", body:"Buy bananas")}
  let(:note_formatter) { NoteFormatter.new(note) }
  describe "#format" do
    it 'formates the note' do
      expect(note_formatter.format(note)).to eq "Title: To do\nBuy bananas"
    end
  end
end
