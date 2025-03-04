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

		it 'returns the sum of multiple numbers (comma separated)' do
		expect(NumberCalculator.new.add("1,2,3")).to eq(6)
		end

		it 'returns the sum of multiple numbers(having newline character in between) ' do
		expect(NumberCalculator.new.add("1\n2,3")).to eq(6)
		end

		it 'returns the sum of multiple numbers(having custom delimeters) ' do
		expect(NumberCalculator.new.add("//;\n1;2")).to eq(3)
		end

		it 'negative number not allowed' do
		 expect { NumberCalculator.new.add("1,-2,3") }.to raise_error("Negative number not allowed: -2")
		end
     
	end
end