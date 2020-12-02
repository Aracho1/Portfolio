# amend the following classes to be testable in isolation and write the tests for them

class Diary

  def initialize(entry_class = Entry)
    @entries = []
    @entry_class = @entry_class
  end

  def add(title, body)
    @entries << @entry_class.new
  end

  def index
    titles = @entries.map do |entry|
      entry.title
    end
    titles.join("\n")
  end
end

class Entry
  def initialize(title, body)
    @title = title
    @body = body
  end

  attr_reader :title, :body
end
