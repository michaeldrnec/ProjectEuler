class Integer
	def sum_digits
		to_s.split("").inject(0) {|sum, n| sum + n.to_i}
	end
end

class String
	def sum_chars
		split("").inject(0) {|sum, n| sum + (n[0] - 64)}
	end
end