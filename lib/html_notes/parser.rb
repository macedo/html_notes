module HTMLNotes
  class Parser

    attr_reader :file, :line, :notation, :text

    def initialize(line)
      @file, @line, @notation, @text = line.split(':')
    end
  end
end
