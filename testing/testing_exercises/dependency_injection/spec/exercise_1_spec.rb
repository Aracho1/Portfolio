require 'exercise_1'

describe Note do
  describe "#display" do
    it 'displays a note in a formatted way' do
      formatter_double = double :formatter
      note = Note.new("title", "body", formatter_double)
      allow(formatter_double).to receive(:format).with(note).and_return("#{note.title}\n#{note.body}")
      expect(note.display).to eq "title\nbody"
    end
  end
end

describe NoteFormatter do
  describe "#format" do
    it 'formates the note' do
      note_double = double :note, title: "title is this", body: "body is this"
      formatter = NoteFormatter.new(note_double)
      expect(formatter.format(note_double)).to eq "Title: title is this\nbody is this"
    end
  end
end
