require_relative 'dojo'

describe Dojo do
  let(:dojo) { Dojo.new }

  describe "#return_inmutable_array" do
    context "must return nil with nil param" do
      it {
        expect(dojo.return_inmutable_array(nil)).to be_nil
      }
    end
    context "must return empty with empty param" do
      it {
        expect(dojo.return_inmutable_array("").empty?).to be_truthy
      }
    end
  end
end
