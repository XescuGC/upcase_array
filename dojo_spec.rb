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
    context "must return empty with only one downcase word" do
      it {
        expect(dojo.return_inmutable_array("a").empty?).to be_truthy
      }
    end
    context "must return [0] for one upcase word" do
      it {
        expect(dojo.return_inmutable_array("A")).to eq([0])
      }
    end
    context "must return [1] for two letters and the second one upcase" do
      it {
        expect(dojo.return_inmutable_array("aB")).to eq([1])
      }
    end
    context "final test for many words" do
      it {
        expect(dojo.return_inmutable_array("CoDing DojO")).to eq([0,2,7,10])
      }
    end
  end
end
