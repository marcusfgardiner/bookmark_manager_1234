require 'link'

describe Link do


  describe "#all" do
    it "returns a list of all links" do
      expect(described_class.all).to include "http://google.com"
      expect(described_class.all).to include "http://facebook.com"
    end
  end
end
