class NumberCalculator
	def add(num)
	return  0  if num.empty?
	num.split(',').map(&:to_i).sum
	end
end 