require "spec_helper"

describe HTMLNotes::Parser do
  it "should split the result from notes gem in attributes" do
    @parser = HTMLNotes::Parser.new('features/step_definitions/web_steps.rb:76: TODO: Add support for checkbox, select or option')
    @parser.file.should == 'features/step_definitions/web_steps.rb'
    @parser.line.should == '76'
    @parser.notation.should  == ' TODO'
    @parser.text.should  ==  ' Add support for checkbox, select or option'
  end
end
