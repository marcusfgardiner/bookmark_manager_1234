require 'link'

describe Link do


  describe "#all" do
    it "returns a list of all links" do
      expect(described_class.all).to eq [ "https://www.google.co.uk/", "https://www.facebook.com/" ]
    end
  end
end
