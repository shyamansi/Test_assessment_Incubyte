class NumberCalculator
	def add(num)
	return  0  if num.empty?
	num.gsub("\n" ,",").split(',').map(&:to_i).sum
	end
end 