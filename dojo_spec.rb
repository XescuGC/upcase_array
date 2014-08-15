require_relative 'dojo'

describe Dojo do
  let(:dojo) { Dojo.new }

  describe "#return_inmutable_array" do
    context "must return nil with nil param" do
      it {
        expect(dojo.return_inmutable_array(nil)).to be_nil
      }
    end
  end
end
