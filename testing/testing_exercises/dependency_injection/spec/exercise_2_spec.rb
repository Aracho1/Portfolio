require 'exercise_2'

describe Diary do
  let(:entry) { double(:entry, title: "title", body:"body") }
  let(:entry_class_double) { double(new: entry) }
  subject(:diary){ Diary.new(entry_class_double) }

  describe "#add" do
    it 'adds a new entry in the diary' do
      expect(diary.add("title", "body")).to include entry
    end
  end

  describe "#index" do
    it 'prints out the title of each entry' do
      diary.add("title", "body")
      expect(diary.index).to eq "title"
    end
  end
end

describe Entry do
  let(:entry) { Entry.new("title", "body")}
  it 'makes a diary entry' do
    expect(entry.title).to eq "title"
    expect(entry.body).to eq "body"
  end
end
