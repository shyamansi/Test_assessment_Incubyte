class NumberCalculator
	def add(num)
	return  0  if num.empty?
	return numbers.to_i if numbers.match(/^\d+$/)

    if numbers.start_with?("//")
    delimiter, numbers = numbers[2..].split("\n", 2)
    numbers = numbers.gsub(delimiter, ",")
    end
end
end 