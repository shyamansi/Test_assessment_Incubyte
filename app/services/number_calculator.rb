class NumberCalculator
	def add(num)
	return  0  if num.empty?
	 delimiter = ","
    if num.start_with?("//")
      parts = num.split("\n", 2)
      delimiter = parts[0][2..]
      num = parts[1]
    end

    num.gsub("\n", delimiter).split(delimiter).map(&:to_i).sum
	end
end 