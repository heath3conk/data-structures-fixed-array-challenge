require_relative 'fixed_array'

describe FixedArray do
  let(:fixed_array) {FixedArray.new(7)}

  describe "#new(size)" do
    it "instantiates a new FixedArray with space for size elements" do
      expect(fixed_array.length).to eq 7
    end
  end

  describe "#get(index)" do
    it "throws exception if asked to get a value at an index outside the bounds" do
      expect{fixed_array.get(7)}.to raise_error(OutOfBoundsException)
    end

    it "returns the correct value for an index within the array" do
      # the array gets filled with 'nil' when it's initialized
      # make sure I'm checking edge cases, then random
      expect(fixed_array.get(0)).to be nil
      expect(fixed_array.get(6)).to be nil
      expect(fixed_array.get(rand 0..6)).to be nil
    end
  end

  describe "#set(index, element)" do
    it "throws exception if asked to set a value at an index outside the bounds" do
      expect{fixed_array.set(7, 'a')}.to raise_error(OutOfBoundsException)
    end

    it "correctly sets the value for an index within the array" do
      index = rand 0..6
      fixed_array.set(index, 'hey')
      expect(fixed_array.get(index)).to eq 'hey'
    end
  end

end
