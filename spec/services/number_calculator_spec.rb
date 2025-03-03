require 'rails_helper'

  RSpec.describe NumberCalculator, type: :service do
    describe '#add' do
      it 'returns 0 for an empty string' do
        expect(NumberCalculator.new.add("")).to eq(0)
      end

       it 'returns 1 for an 1 number' do
        expect(NumberCalculator.new.add("1")).to eq(1)
      end
	end
end