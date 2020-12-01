class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

class NoteFormatter
  def initialize(note = Note.new)
    @note = note
  end

  def format(note)
    "Title: #{note.title}\n#{note.body}"
  end
end
