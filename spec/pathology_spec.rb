require 'spec_helper'

describe Pathology do

  context ".template(pattern)" do
    let(:pattern) { double }
    let(:template) { double }

    before do
      Pathology::Template.
        stub(:new).
        with(pattern).
        and_return(template)
    end

    it "builds a Pathology::Template from the pattern" do
      expect( described_class.template(pattern) ).to eq( template )
    end
  end

end
