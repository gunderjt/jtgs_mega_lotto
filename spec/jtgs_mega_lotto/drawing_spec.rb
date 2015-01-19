require "spec_helper"

module JtgsMegaLotto
  describe Drawing do
    describe "#draw" do
      let(:draw) {JtgsMegaLotto::Drawing.new.draw}

      it "returns an array" do
        expect(draw).to be_a(Array)
      end

      it "returns an array with 6 elements" do
        expect(draw.size).to eq(6)
      end

      it "each element is an integer" do
        draw.each do |drawing|
          expect(drawing).to be_a(Integer)
        end
      end

      it "each element is less than 60" do
        draw.each do |drawing|
          expect(drawing).to be < 60
        end
      end

      it "each element is greater than or equal to 0" do
        draw.each do |drawing|
          expect(drawing).to be >= 0
        end
      end

      it "no elements in draw are repeated" do
        expect(draw.uniq.size).to eq(6)
      end
    end
  end
end