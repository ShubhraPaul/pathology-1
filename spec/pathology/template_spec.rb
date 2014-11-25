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

    context 'given multiple possible matches' do
      let(:pattern) { "~/notes/:date_string/foo.txt" }

      let(:values) {
        {
          :date => Date.new(2014, 5, 24),
          :date_string => 'May_5_2014',
        }
      }

      it 'selects the longest key that matches each interpolation variable' do
        expect( subject.interpolate( values ) ).to eq(
          "~/notes/May_5_2014/foo.txt"
        )
      end
    end
  end

end
