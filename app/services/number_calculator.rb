class NumberCalculator
	def add(numbers)
    return 0 if numbers.empty?

    delimiter = ","
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = parts[0][2..]
      numbers = parts[1]
    end

    numbers.gsub("\n", delimiter)
           .split(delimiter)
           .map(&:to_i)
           .tap { |nums| 
             negatives = nums.select { |num| num < 0 }
            raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

           }
           .sum
  end
end 