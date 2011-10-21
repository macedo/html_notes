module HTMLNotes
  autoload :Version, "html_notes/version"
  autoload :Parser, "html_notes/parser"

  class << self
    def start
      @rows = `notes`.split("\n").inject([]) do |rows, line|
        rows << HTMLNotes::Parser.new(line)
      end
      output_html
    end

    def output_html
      require 'erubis'
      template = File.read(File.join(File.dirname(__FILE__), "..", "assets", "template.html.erb"))

      File.open("notes.html", "w+") do |file|
        eruby = Erubis::Eruby.new(template)
        file.puts eruby.evaluate(:rows => @rows, :notation_names => notation_names)
      end
    end

    def notation_names
      @rows.map(&:notation).uniq
    end
  end
end
