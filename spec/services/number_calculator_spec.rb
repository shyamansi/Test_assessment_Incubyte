require 'rails_helper'

  RSpec.describe NumberCalculator, type: :service do
    describe '#add' do
      it 'returns 0 for an empty string' do
        expect(NumberCalculator.new.add("")).to eq(0)
      end

      it 'returns 1 for an 1 number' do
        expect(NumberCalculator.new.add("1")).to eq(1)
      end

      it 'returns the sum of two numbers(comma separated)' do
        expect(NumberCalculator.new.add("1,2")).to eq(3)
      end
      it 'returns the sum of multiple numbers' do
        expect(NumberCalculator.new.add("1,2,3")).to eq(6)
      end
     
	end
end