class Integer
	def sum_digits
		to_s.split("").inject(0) {|sum, n| sum + n.to_i}
	end
end