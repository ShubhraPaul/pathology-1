require 'spec_helper'

describe Pathology::Template do

  context ".interpolate(values)" do
    let(:pattern) { "~/notes/:date/:topic.txt" }

    let(:values) {
      {
        :date => Date.new(2014, 5, 24),
        :topic => 'hello'
      }
    }

    subject { described_class.new( pattern ) }

    it "builds a Pathology::Template" do
      expect( subject.interpolate( values ) ).to eq(
        "~/notes/2014-05-24/hello.txt"
      )
    end
  end

end
