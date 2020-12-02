require 'exercise_2'

describe Diary do
  describe "#add" do
    it 'adds a new entry in the diary' do
      entry_double = double :entry
      entry_class_double = double :entry_class, new: entry_double

      diary = Diary.new(entry_class_double)

      expect(diary.entries).to receive(<<)
      diary.add("hello", "world")
    end
  end
end

describe Entry do
  it 'makes a diary entry' do
    new_entry = Entry.new("hello", "world")
    expect(new_entry.title).to eq "hello"
    expect(new_entry.body).to eq "world"
  end
end
