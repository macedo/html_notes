require "spec_helper"

describe HTMLNotes do
  it "has a version" do
    HTMLNotes::Version::STRING.should match(/^\d+\.\d+\.\d+$/)
  end
end
